//
//  ChatForRetailerVC.swift
//  AMarket
//
//  Created by MacUser on 9/28/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit
import Chatto
import ChattoAdditions

class ChatForRetailerVC: BaseChatViewController {

    private var dataSource: ChatDataSource!;
    private var chatInputPresenter: BasicChatInputBarPresenter!;
    private var newOfferView: NewOfferView!;
    
	var inquiry: RetailerInquiryDto!;
    var customer: UserDto!;
	var backButtonPressedHandler: (() -> Void)?;
    
	override func viewDidLoad() {
        dataSource = ChatDataSource(self, customer.logoPath, !inquiry.isClosed);
        chatDataSource = dataSource;
		super.chatItemsDecorator = ChatItemsDecorator();
        super.viewDidLoad();
        checkIfOfferExists();
	}
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        backButtonPressedHandler?();
        AppDelegate.shared.switchRootViewController(rootViewController: UserData.retailerRootNavigationVC!, options: .transitionFlipFromLeft);
    }
    
    func checkIfOfferExists() {
        ProgressHud.start(in: collectionView);
        let model = OfferGetRequest(inquiryId: inquiry.id, retailerId: UserData.user.id, customerId: inquiry.customerId);
        ApiOffer.get(
            model: model,
            success: { resp in
                if let offer = resp.offer {
                    self.dataSource.offerId = offer.id;
                    self.dataSource.startPolling();
                }
                else if !self.inquiry.isClosed {
                    self.showNewOfferView();
                }
            },
            error: { resp in
                Alert.show(self, title: "Ошибка", msg: resp.message, okPressedHandler: {
                    AppDelegate.shared.switchRootViewController(rootViewController: UserData.retailerRootNavigationVC!, options: .transitionFlipFromLeft);
                });
            },
            always: {
                ProgressHud.stop();
            }
        );
    }
    
    func showNewOfferView() {
        newOfferView = Bundle.main.loadNibNamed(StrId.NewOfferView.rawValue, owner: nil, options: nil)?.first as! NewOfferView;
        newOfferView.offerButtonPressedHandler = { price in
            self.createOffer(price);
        };
        newOfferView.priceField.becomeFirstResponder();
        newOfferView.translatesAutoresizingMaskIntoConstraints = false;
        view.addSubview(newOfferView);
        view.addConstraints([
            NSLayoutConstraint(item: inputContainer, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: newOfferView, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: newOfferView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: newOfferView, attribute: NSLayoutAttribute.left, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: newOfferView, attribute: NSLayoutAttribute.right, multiplier: 1, constant: 0)
        ]);
    }
    
    func hideNewOfferView() {
        newOfferView.removeFromSuperview();
    }
    
    func createOffer(_ price: Double) {
        ProgressHud.start(in: view);
        let model = OfferCreateRequest(inquiryId: inquiry.id, price: price, created: Date());
        ApiOffer.create(
            model: model,
            success: { resp in
                
                self.hideNewOfferView();
                self.dataSource.offerId = resp.id;
                self.dataSource.startPolling();
            },
            error: { resp in
                Alert.show(self, title: "Ошибка", msg: resp.message, okPressedHandler: {
                    self.backButtonPressedHandler?();
                    AppDelegate.shared.switchRootViewController(rootViewController: UserData.retailerRootNavigationVC!, options: .transitionFlipFromLeft);
                });
            },
            always: {
                ProgressHud.stop();
            }
        );
    }
	
    // MARK: - BaseChatViewController
    
	override func createChatInputView() -> UIView {
		let chatInputView = ChatInputBar.loadNib();
		var appearance = ChatInputBarAppearance();
		appearance.sendButtonAppearance.title = NSLocalizedString("Отправить", comment: "");
		appearance.textInputAppearance.placeholderText = NSLocalizedString("Ваше сообщение", comment: "");
		chatInputPresenter = BasicChatInputBarPresenter(chatInputBar: chatInputView, chatInputItems: createChatInputItems(), chatInputBarAppearance: appearance);
		chatInputView.maxCharactersCount = 1000;
		return chatInputView;
	}
	
	override func createPresenterBuilders() -> [ChatItemType: [ChatItemPresenterBuilderProtocol]] {
        let messageActionHandler = MessageActionHandler(sendMessageDelegate: dataSource.sendMessage);
        
		let textMessagePresenter = TextMessagePresenterBuilder(
			viewModelBuilder: MyTextMessageViewModelBuilder(),
			interactionHandler: MyTextMessageHandler(baseHandler: messageActionHandler)
		);
		textMessagePresenter.baseMessageStyle = BaseMessageCollectionViewCellAvatarStyle();
		
		let photoMessagePresenter = PhotoMessagePresenterBuilder(
			viewModelBuilder: MyPhotoMessageViewModelBuilder(),
			interactionHandler: MyPhotoMessageHandler(baseHandler: messageActionHandler)
		);
		photoMessagePresenter.baseCellStyle = BaseMessageCollectionViewCellAvatarStyle();
		
		return [
			MyTextMessageModel.chatItemType: [textMessagePresenter],
			MyPhotoMessageModel.chatItemType: [photoMessagePresenter],
			SendingStatusModel.chatItemType: [SendingStatusPresenterBuilder()],
			TimeSeparatorModel.chatItemType: [TimeSeparatorPresenterBuilder()]
		];
	}
	
	func createChatInputItems() -> [ChatInputItemProtocol] {
		var items = [ChatInputItemProtocol]();
		items.append(createTextInputItem());
		items.append(createPhotoInputItem());
		return items;
	}
	
	private func createTextInputItem() -> TextChatInputItem {
		let item = TextChatInputItem();
		item.textInputHandler = { [weak self] text in
			self?.dataSource.addAndSendTextMessage(text);
        };
		return item;
	}
	
	private func createPhotoInputItem() -> PhotosChatInputItem {
		let item = PhotosChatInputItem(presentingController: self);
		item.photoInputHandler = { [weak self] image in
			self?.dataSource.addAndSendPhotoMessage(image);
        };
		return item;
	}
	
}
