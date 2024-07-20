//
//  OfferDto.swift
//  AMarket
//
//  Created by MacUser on 9/13/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class OfferDto: CustomStringConvertible {
    var id: Int;
    var retailerId: Int;
	var retailerUsername: String;
    var retailerCompanyName: String?;
	var price: Double;
	var isRejected: Bool;
	var isImageAttached: Bool;
	var created: Date;

	init? (json: AnyObject) {
		if let id = json.value(forKeyPath: "id") as? Int,
            let retailerId = json.value(forKeyPath: "retailerId") as? Int,
            let retailerUsername = json.value(forKeyPath: "retailerUsername") as? String,
			let price = json.value(forKeyPath: "price") as? Double,
			let isRejected = json.value(forKeyPath: "isRejected") as? Bool,
			let isImageAttached = json.value(forKeyPath: "isImageAttached") as? Bool,
			let created = json.value(forKeyPath: "created") as? String
		{
            self.id = id;
            self.retailerId = retailerId;
			self.retailerUsername = retailerUsername;
            self.retailerCompanyName = json.value(forKeyPath: "retailerCompanyName") as? String;
			self.price = price;
			self.isRejected = isRejected;
			self.isImageAttached = isImageAttached;
			self.created = created.dateFromStringWebApi();
		} else {
			return nil;
		}
	}

	var description: String {
		return "id: \(id); retailerId: \(retailerId);retailerUsername: \(retailerUsername); retailerCompanyName: \(retailerCompanyName);price: \(price); isRejected: \(isRejected); isImageAttached: \(isImageAttached); created: \(created);";
	}
}
