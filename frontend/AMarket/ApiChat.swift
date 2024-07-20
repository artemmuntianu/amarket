//
//  ApiChat.swift
//  AMarket
//
//  Created by MacUser on 10/22/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class ApiChat: ApiBase {

	static func getMessages(model: ChatGetMessagesRequest, success: @escaping ((ChatGetMessagesResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
		postJson(path: "chat/getMessages", model: model, success: success, error: error, always: always);
	}
    
    static func sendTextMessage(model: ChatSendTextMessageRequest, success: @escaping ((ChatSendMessageResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
        postJson(path: "chat/sendMessage", model: model, success: success, error: error, always: always);
    }

    static func sendPhotoMessage(model: ChatSendPhotoMessageRequest, success: @escaping ((ChatSendMessageResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
        postMultipart(path: "chat/sendMessage", model: model, image: model.image, success: success, error: error, always: always);
    }
    
}

// MARK: ChatGetMessages

class ChatGetMessagesResponse: ApiResponseProtocol {
	var messages = [MessageDto]();

	required init?(json: AnyObject) {
		if let array = json as? [AnyObject] {
            for item in array {
                if let messageDto = MessageDto(json: item) {
                    messages.append(messageDto);
                }
            }
		} else {
			return nil;
		}
	}

	var description: String {
		return "messages: \(messages)";
	}
}

class ChatGetMessagesRequest: PropsToArrayConvertibleProtocol {
	let guid: String;
    let offerId: Int;
    var messagesIdxs: [Int]?;
    var createdBefore: String;
    var createdAfter: String;
    
	init(offerId: Int, messagesIdxs: [Int]?, createdBefore: Date, createdAfter: Date) {
		self.guid = UserData.guid;
        self.offerId = offerId;
        self.messagesIdxs = messagesIdxs;
        self.createdBefore = createdBefore.stringWebApiFromDate();
        self.createdAfter = createdAfter.stringWebApiFromDate();
	}
    
    init(offerId: Int, createdBefore: Date) {
        self.guid = UserData.guid;
        self.offerId = offerId;
        self.createdBefore = createdBefore.stringWebApiFromDate();
        self.createdAfter = "";
    }

	func propsToArray() -> [String: AnyObject]? {
		return [
			"guid": guid as AnyObject,
			"offerId": offerId as AnyObject,
			"messagesIdxs": messagesIdxs as AnyObject,
			"createdBefore": createdBefore as AnyObject,
			"createdAfter": createdAfter as AnyObject
		];
	}
}

// MARK: ChatSendMessage

class ChatSendMessageRequestBase {
    let guid: String;
    let offerId: Int;
    let type: Int;
    let created: String;
    
    init(offerId: Int, type: MessageType, created: Date) {
        self.guid = UserData.guid;
        self.offerId = offerId;
        self.type = type.rawValue;
        self.created = created.stringWebApiFromDate();
    }
}

class ChatSendTextMessageRequest: ChatSendMessageRequestBase, PropsToArrayConvertibleProtocol {
    var text: String;
    
    init(offerId: Int, text: String, type: MessageType, created: Date) {
        self.text = text;
        super.init(offerId: offerId, type: type, created: created);
    }
    
    func propsToArray() -> [String: AnyObject]? {
        return [
            "guid": guid as AnyObject,
            "offerId": offerId as AnyObject,
            "text": text as AnyObject,
            "type": type as AnyObject,
            "created": created as AnyObject
        ];
    }
}

class ChatSendPhotoMessageRequest: ChatSendMessageRequestBase, PropsToArrayConvertibleProtocol {
    var image: UIImage;
    
    init(offerId: Int, image: UIImage, type: MessageType, created: Date) {
        self.image = image;
        super.init(offerId: offerId, type: type, created: created);
    }
    
    func propsToArray() -> [String: AnyObject]? {
        return [
            "guid": guid as AnyObject,
            "offerId": offerId as AnyObject,
            "image": image as AnyObject,
            "type": type as AnyObject,
            "created": created as AnyObject
        ];
    }
}

class ChatSendMessageResponse: ApiResponseProtocol {
    let id: Int;
    
    required init?(json: AnyObject) {
        if let id = json.value(forKeyPath: "id") as? Int {
            self.id = id;
        } else {
            return nil;
        }
    }
    
    var description: String {
        return "id: \(id)";
    }
}
