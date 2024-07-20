//
//  RetailerInquiryDto.swift
//  AMarket
//
//  Created by MacUser on 9/26/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class RetailerInquiryDto: CustomStringConvertible {
	var id: Int;
	var customerName: String;
	var customerId: Int;
	var text: String;
	var categoryName: String;
	var offersAmount: Int;
	var isClosed: Bool;
	var isOffered: Bool;
	var isOfferRejected: Bool;
    var updated: Date?;
	var created: Date;
	
    var description: String {
        return "id: \(id); customerName: \(customerName); customerId: \(customerId); text: \(text); categoryName: \(categoryName); offersAmount: \(offersAmount); isClosed: \(isClosed); isOffered: \(isOffered); isOfferRejected: \(isOfferRejected); updated: \(updated); created: \(created);";
    }
    
	init(json: AnyObject) {
		id = json.value(forKeyPath: "id") as! Int;
		customerName = json.value(forKeyPath: "customerName") as! String;
		customerId = json.value(forKeyPath: "customerId") as! Int;
		text = json.value(forKeyPath: "text") as! String;
		categoryName = json.value(forKeyPath: "categoryName") as! String;
		offersAmount = json.value(forKeyPath: "offersAmount") as! Int;
		isClosed = json.value(forKeyPath: "isClosed") as! Bool;
		isOffered = json.value(forKeyPath: "isOffered") as! Bool;
		isOfferRejected = json.value(forKeyPath: "isOfferRejected") as! Bool;
        updated = (json.value(forKeyPath: "updated") as? String)?.dateFromStringWebApi();
		created = (json.value(forKeyPath: "created") as! String).dateFromStringWebApi();
	}
    
    func update(by obj: RetailerInquiryDto) {
        customerName = obj.customerName;
        customerId = obj.customerId;
        text = obj.text;
        categoryName = obj.categoryName
        offersAmount = obj.offersAmount;
        isClosed = obj.isClosed;
        isOffered = obj.isOffered;
        isOfferRejected = obj.isOfferRejected;
        updated = obj.updated;
        created = obj.created;
    }
}
