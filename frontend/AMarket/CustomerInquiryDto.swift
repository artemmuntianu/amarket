//
//  CustomerInquiryDto.swift
//  AMarket
//
//  Created by MacUser on 9/3/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class CustomerInquiryDto: CustomStringConvertible {
	var id: Int;
	var name: String;
	var text: String;
	var categoryName: String;
	var offersAmount: Int;
	var isClosed: Bool;
    var updated: Date?;
	var created: Date;

    var description: String {
        return "id: \(id); name: \(name); text: \(text); categoryName: \(categoryName); offersAmount: \(offersAmount); isClosed: \(isClosed); updated: \(updated); created: \(created);";
    }
    
	init(json: AnyObject) {
		id = json.value(forKeyPath: "id") as! Int;
		name = json.value(forKeyPath: "name") as! String;
		text = json.value(forKeyPath: "text") as! String;
		categoryName = json.value(forKeyPath: "categoryName") as! String;
		offersAmount = json.value(forKeyPath: "offersAmount") as! Int;
		isClosed = json.value(forKeyPath: "isClosed") as! Bool;
        updated = (json.value(forKeyPath: "updated") as? String)?.dateFromStringWebApi();
		created = (json.value(forKeyPath: "created") as! String).dateFromStringWebApi();
	}

    func update(by obj: CustomerInquiryDto) {
        name = obj.name;
        text = obj.text;
        categoryName = obj.categoryName
        offersAmount = obj.offersAmount;
        isClosed = obj.isClosed;
        updated = obj.updated;
        created = obj.created;
    }

	var nameShortenedTo15Chars: String {
		return name.characters.count <= 15 ? name : "\(name.substring(to: name.characters.index(name.startIndex, offsetBy: 15)))...";
	}
}
