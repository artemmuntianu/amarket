//
//  ApiOffer.swift
//  AMarket
//
//  Created by MacUser on 10/30/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class ApiOffer: ApiBase {

	static func get(model: OfferGetRequest, success: @escaping ((OfferGetResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
		postJson(path: "offer/get", model: model, success: success, error: error, always: always);
	}
    
    static func create(model: OfferCreateRequest, success: @escaping ((OfferCreateResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
        postJson(path: "offer/create", model: model, success: success, error: error, always: always);
    }

}

// MARK: OfferGet

class OfferGetResponse: ApiResponseProtocol {
    var offer: OfferDetailedDto?;

	required init?(json: AnyObject) {
        if let offerDto = OfferDetailedDto(json: json) {
            self.offer = offerDto;
        }
	}

	var description: String {
		return "offer: \(offer)";
	}
}

class OfferGetRequest: PropsToArrayConvertibleProtocol {
	let guid: String;
    let inquiryId: Int;
    let retailerId: Int;
    let customerId: Int;
    
	init(inquiryId: Int, retailerId: Int, customerId: Int) {
		self.guid = UserData.guid;
        self.inquiryId = inquiryId;
        self.retailerId = retailerId;
        self.customerId = customerId;
	}

	func propsToArray() -> [String: AnyObject]? {
		return [
			"guid": guid as AnyObject,
			"inquiryId": inquiryId as AnyObject,
			"retailerId": retailerId as AnyObject,
			"customerId": customerId as AnyObject
		];
	}
}

// MARK: OfferCreate

class OfferCreateRequest: PropsToArrayConvertibleProtocol {
    let guid: String;
    let inquiryId: Int;
    let price: Double;
    let created: String;
    
    init(inquiryId: Int, price: Double, created: Date) {
        self.guid = UserData.guid;
        self.inquiryId = inquiryId;
        self.price = price;
        self.created = created.stringWebApiFromDate();
    }
    
    func propsToArray() -> [String: AnyObject]? {
        return [
            "guid": guid as AnyObject,
            "inquiryId": inquiryId as AnyObject,
            "price": price as AnyObject,
            "created": created as AnyObject
        ];
    }
}

class OfferCreateResponse: ApiResponseProtocol {
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
