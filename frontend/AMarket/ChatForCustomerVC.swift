//
//  ChatForCustomerVC.swift
//  AMarket
//
//  Created by MacUser on 12/7/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit
import Chatto
import ChattoAdditions

class ChatForCustomerVC: BaseChatViewController {

    private var dataSource: ChatDataSource!;
    private var chatInputPresenter: BasicChatInputBarPresenter!;
    
    var inquiry: InquiryDetailedDto!;
	var offer: OfferDto!;
    var retailer: UserDto!;
	var backButtonPressedHandler: (() -> Void)?;
    
	override func viewDidLoad() {
        dataSource = ChatDataSource(self, retailer.logoPath, !inquiry.isClosed);
        chatDataSource = dataSource;
		super.chatItemsDecorator = ChatItemsDecorator();
        super.viewDidLoad();
        dataSource.offerId = offer.id;
        dataSource.startPolling();
	}
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        backButtonPressedHandler?();
        AppDelegate.shared.switchRootViewController(rootViewController: UserData.customerRootNavigationVC!, options: .transitionFlipFromLeft);
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
