import Foundation
import Chatto
import ChattoAdditions
import AlamofireImage

extension TextMessageModel {
    static var chatItemType: ChatItemType {
        return "text";
    }
}

extension PhotoMessageModel {
    static var chatItemType: ChatItemType {
        return "photo";
    }
}

public protocol MyMessageModelProtocol: MessageModelProtocol {
    var status: MessageStatus { get set }
}

class ChatDataSource: ChatDataSourceProtocol {
	
    private var messages = [MyMessageModelProtocol]();
	private var nextMessageId = 1; /* used as a temp uid for a new message */
    private var timer: Timer?;
    private let chatVC: BaseChatViewController;
    private var isLoadingPreviousMessages = false;
    private var isNoMorePreviousMessages = false;
    private var secondUserLogoPath: String;
    private var canSend: Bool;
    
    var offerId: Int!;
    
    init(_ chatVC: BaseChatViewController, _ secondUserLogoPath: String, _ canSend: Bool) {
        self.chatVC = chatVC;
        self.secondUserLogoPath = secondUserLogoPath;
        self.canSend = canSend;
    }
    
	func addAndSendTextMessage(_ text: String) {
        guard canSend else {
            Alert.show(chatVC, title: "Предупреждение", msg: "Невозможно послать Ваше сообщение так как запрос был закрыт его создателем");
            return;
        }
		let uniqueId = "\(-1 * nextMessageId)";
        nextMessageId += 1;
        let messageModel = MessageModel(uid: uniqueId, senderId: "\(UserData.user.id)", type: MyTextMessageModel.chatItemType, isIncoming: false, date: Date(), status: .sending);
        let textMsg = MyTextMessageModel(messageModel: messageModel, logoPath: selectLogoPath(isIncoming: false), text: text);
        sendMessage(textMsg);
        messages.append(textMsg);
        delegate?.chatDataSourceDidUpdate(self);
	}
    
    func addAndSendPhotoMessage(_ image: UIImage) {
        guard canSend else {
            Alert.show(chatVC, title: "Предупреждение", msg: "Невозможно послать Ваше сообщение так как запрос был закрыт его создателем");
            return;
        }
        let uniqueId = "\(-1 * nextMessageId)";
        nextMessageId += 1;
        let messageModel = MessageModel(uid: uniqueId, senderId: "\(UserData.user.id)", type: MyPhotoMessageModel.chatItemType, isIncoming: false, date: Date(), status: .sending);
        let photoMsg = MyPhotoMessageModel(messageModel: messageModel, logoPath: selectLogoPath(isIncoming: false), imageSize: CGSize(width: 300, height: 300), image: image);
        sendMessage(photoMsg);
        messages.append(photoMsg);
        delegate?.chatDataSourceDidUpdate(self);
    }
    
    func sendMessage(_ message: MyMessageModelProtocol) {
        switch message.type {
            case MyTextMessageModel.chatItemType:
                let textMsg = message as! MyTextMessageModel;
                let model = ChatSendTextMessageRequest(
                    offerId: offerId,
                    text: textMsg.text,
                    type: .Text,
                    created: Date()
                );
                ApiChat.sendTextMessage(
                    model: model,
                    success: { resp in
                        // TODO: stop fetching messages from server until ID is assigned
                        // because we can retrieve this message with fetching so that we
                        // will have 2 same messages
                        textMsg._messageModel.uid = "\(resp.id)";
                        message.status = .success;
                        self.delegate?.chatDataSourceDidUpdate(self);
                    },
                    error: { resp in
                        message.status = .failed;
                        self.delegate?.chatDataSourceDidUpdate(self);
                    }
                );
            case MyPhotoMessageModel.chatItemType:
                let photoMsg = message as! MyPhotoMessageModel;
                let model = ChatSendPhotoMessageRequest(
                    offerId: offerId,
                    image: photoMsg.image,
                    type: .Photo,
                    created: Date()
                );
                ApiChat.sendPhotoMessage(
                    model: model,
                    success: { resp in
                        // TODO: stop fetching messages from server until ID is assigned
                        // because we can retrieve this message with fetching so that we
                        // will have 2 same messages
                        photoMsg._messageModel.uid = "\(resp.id)";
                        message.status = .success;
                        self.delegate?.chatDataSourceDidUpdate(self);
                    },
                    error: { resp in
                        message.status = .failed;
                        self.delegate?.chatDataSourceDidUpdate(self);
                    }
                );
            default: break;
        }
    }
    
    func addTextMessageFromServer(_ item: MessageDto) {
        let messageModel = MessageModel(uid: "\(item.id)", senderId: "\(item.senderId)", type: MyTextMessageModel.chatItemType, isIncoming: item.isIncoming, date: item.created, status: MessageStatus.success);
        let textMsg = MyTextMessageModel(messageModel: messageModel, logoPath: selectLogoPath(isIncoming: item.isIncoming), text: item.text);
        messages.append(textMsg);
    }
    
    func addPhotoMessageFromServer(_ item: MessageDto) {
        let messageModel = MessageModel(uid: "\(item.id)", senderId: "\(item.senderId)", type: MyPhotoMessageModel.chatItemType, isIncoming: item.isIncoming, date: item.created, status: MessageStatus.success);
        let photoMsg = MyPhotoMessageModel(messageModel: messageModel, logoPath: selectLogoPath(isIncoming: item.isIncoming), imageSize: CGSize(width: 300, height: 300), imageUrl: item.text.replacingOccurrences(of: ".jpg", with: "_600_600.jpg"));
        messages.append(photoMsg);
    }
    
    func addMessagesFromServer(_ messages: [MessageDto]) {
        if (messages.count > 0) {
            for item in messages {
                switch item.type {
                case .Text:
                    self.addTextMessageFromServer(item);
                case .Photo:
                    self.addPhotoMessageFromServer(item);
                }
            }
            self.messages.sort { $0.date < $1.date };
            self.delegate?.chatDataSourceDidUpdate(self);
        }
    }
    
    func loadPreviousMessages() {
        ProgressHud.start(in: chatVC.view);
        isLoadingPreviousMessages = true;
        let model = ChatGetMessagesRequest(offerId: offerId, createdBefore: messages.first!.date);
        ApiChat.getMessages(
            model: model,
            success: { resp in
                self.addMessagesFromServer(resp.messages.reversed());
                self.isNoMorePreviousMessages = (resp.messages.count == 0);
                self.isLoadingPreviousMessages = false;
            },
            error: { resp in
                Alert.show(self.chatVC, title: "Ошибка", msg: resp.message, okPressedHandler: {
                    self.isLoadingPreviousMessages = false;
                });
            },
            always: {
                ProgressHud.stop();
            }
        );
    }
    
    @objc
    func loadNextMessages() {
        stopPolling();
        var model: ChatGetMessagesRequest;
        if (messages.count == 0) {
            ProgressHud.start(in: chatVC.view);
            model = ChatGetMessagesRequest(offerId: offerId, createdBefore: Date());
        } else {
            let messagesIdxs = messages.map({ item in
                return Int(item.uid)!;
            });
            model = ChatGetMessagesRequest(offerId: offerId, messagesIdxs: messagesIdxs, createdBefore: messages.last!.date, createdAfter: messages.first!.date);
        }
        ApiChat.getMessages(
            model: model,
            success: { resp in
                self.addMessagesFromServer(resp.messages);
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.loadNextMessages), userInfo: nil, repeats: false);
            },
            error: { resp in
                Alert.show(self.chatVC, title: "Ошибка", msg: resp.message);
            },
            always: {
                if (self.messages.count == 0) {
                    ProgressHud.stop();
                }
            }
        );
    }
    
    func startPolling() {
        loadNextMessages();
    }
    
    func stopPolling() {
        self.timer?.invalidate();
        self.timer = nil;
    }
    
    private func selectLogoPath(isIncoming: Bool) -> String {
        return (isIncoming ? secondUserLogoPath : UserData.user.logoPath).replacingOccurrences(of: ".jpg", with: "_200_200.jpg");
    }
    
	// MARK: - ChatDataSourceProtocol

	weak var delegate: ChatDataSourceDelegateProtocol?;

	var hasMoreNext: Bool {
        return false;
	}

	var hasMorePrevious: Bool {
        return true;
	}

	var chatItems: [ChatItemProtocol] {
        return messages;
	}

	func loadNext() {
        // empty
	}

	func loadPrevious() {
        guard !isNoMorePreviousMessages && !isLoadingPreviousMessages else { return }
        loadPreviousMessages();
	}

	func adjustNumberOfMessages(preferredMaxCount: Int?, focusPosition: Double, completion:((Bool)) -> Void) {
        // empty
	}

}
