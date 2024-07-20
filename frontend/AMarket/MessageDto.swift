//
//  MessageDto.swift
//  AMarket
//
//  Created by Artem on 10/22/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class MessageDto: CustomStringConvertible {
    var id: Int;
    var senderId: Int;
    var type: MessageType;
    var text: String;
    var isIncoming: Bool;
    var created: Date;
    
    init? (json: AnyObject) {
        if let id = json.value(forKeyPath: "id") as? Int,
            let senderId = json.value(forKeyPath: "senderId") as? Int,
            let type = json.value(forKeyPath: "type") as? Int,
            let text = json.value(forKeyPath: "text") as? String,
            let isIncoming = json.value(forKeyPath: "isIncoming") as? Bool,
            let created = json.value(forKeyPath: "created") as? String
        {
            self.id = id;
            self.senderId = senderId;
            self.type = MessageType(rawValue: type)!;
            self.text = text;
            self.isIncoming = isIncoming;
            self.created = created.dateFromStringWebApi();
        } else {
            return nil;
        }
    }
    
    var description: String {
        return "id: \(id); senderId: \(senderId); type: \(type); text: \(text); isIncoming: \(isIncoming); created: \(created);";
    }
}
