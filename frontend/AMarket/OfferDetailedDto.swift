//
//  OfferDetailedDto.swift
//  AMarket
//
//  Created by MacUser on 10/30/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class OfferDetailedDto: CustomStringConvertible {
    var id: Int;
    var inquiryId: Int;
    var retailerId: Int;
    var customerId: Int;
    var price: Double;
    var isRejected: Bool;
    var created: Date;
    
	init? (json: AnyObject) {
		if let id = json.value(forKeyPath: "id") as? Int,
			let inquiryId = json.value(forKeyPath: "inquiryId") as? Int,
			let retailerId = json.value(forKeyPath: "retailerId") as? Int,
			let customerId = json.value(forKeyPath: "customerId") as? Int,
            let price = json.value(forKeyPath: "price") as? Double,
            let isRejected = json.value(forKeyPath: "isRejected") as? Bool,
			let created = json.value(forKeyPath: "created") as? String
		{
			self.id = id;
            self.inquiryId = inquiryId;
            self.retailerId = retailerId;
            self.customerId = customerId;
			self.price = price;
			self.isRejected = isRejected;
			self.created = created.dateFromStringWebApi();
		} else {
			return nil;
		}
	}

	var description: String {
		return "id: \(id); inquiryId: \(inquiryId); retailerId: \(retailerId); customerId: \(customerId); price: \(price); isRejected: \(isRejected); created: \(created);";
	}
}
