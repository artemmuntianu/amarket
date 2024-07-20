//
//  ApiInquiry.swift
//  AMarket
//
//  Created by MacUser on 9/3/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class ApiInquiry: ApiBase {

	static func listForCustomer(model: CustomerInquiryListRequest, success: @escaping ((CustomerInquiryListResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
		postJson(path: "inquiry/list", model: model, success: success, error: error, always: always);
	}

	static func listForRetailer(model: RetailerInquiryListRequest, success: @escaping ((RetailerInquiryListResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
		postJson(path: "inquiry/list", model: model, success: success, error: error, always: always);
	}
	
	static func create(model: InquiryCreateRequest, success: @escaping ((EmptyApiResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
		postJson(path: "inquiry/create", model: model, success: success, error: error, always: always);
	}

	static func get(model: InquiryGetRequest, success: @escaping ((InquiryGetResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
		postJson(path: "inquiry/get", model: model, success: success, error: error, always: always);
	}

	static func close(model: InquiryCloseRequest, success: @escaping ((EmptyApiResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
		postJson(path: "inquiry/close", model: model, success: success, error: error, always: always);
	}

}

// MARK: InquiryClose

class InquiryCloseRequest: PropsToArrayConvertibleProtocol {
	let guid: String;
	let inquiryId: Int;

	init(inquiryId: Int) {
		self.guid = UserData.guid;
		self.inquiryId = inquiryId;
	}

	func propsToArray() -> [String: AnyObject]? {
		return [
			"guid": guid as AnyObject,
			"inquiryId": inquiryId as AnyObject
		];
	}
}

// MARK: InquiryGet

class InquiryGetResponse: ApiResponseProtocol {
	var inquiry: InquiryDetailedDto!;

	required init?(json: AnyObject) {
		if let inquiry = InquiryDetailedDto(json: json) {
			self.inquiry = inquiry;
		}
	}

	var description: String {
		return "inquiry: \(inquiry)";
	}
}

class InquiryGetRequest: PropsToArrayConvertibleProtocol {
	let guid: String;
	let inquiryId: Int;

	init(inquiryId: Int) {
		self.guid = UserData.guid;
		self.inquiryId = inquiryId;
	}

	func propsToArray() -> [String: AnyObject]? {
		return [
			"guid": guid as AnyObject,
			"inquiryId": inquiryId as AnyObject
		];
	}
}

// MARK: InquiryCreate

class InquiryCreateRequest: PropsToArrayConvertibleProtocol {
	let guid: String;
	let name: String;
	let text: String;
	let categoryName: String;
    let created: String;

    init(name: String, text: String, categoryName: String, created: Date) {
		self.guid = UserData.guid;
		self.name = name;
		self.text = text;
		self.categoryName = categoryName;
        self.created = created.stringWebApiFromDate();
	}

	func propsToArray() -> [String: AnyObject]? {
		return [
			"guid": guid as AnyObject,
			"name": name as AnyObject,
			"text": text as AnyObject,
			"categoryName": categoryName as AnyObject,
			"created": created as AnyObject,
		];
	}
}

// MARK: InquiryListForCustomer

class CustomerInquiryListResponse: ApiResponseProtocol {
    var created = [CustomerInquiryDto]();
    var updated = [CustomerInquiryDto]();
    
    required init?(json: AnyObject) {
        if let createdRaw = json.value(forKeyPath: "created") as? [AnyObject],
            let updatedRaw = json.value(forKeyPath: "updated") as? [AnyObject] {
            for item in createdRaw {
                let inquiry = CustomerInquiryDto(json: item);
                created.append(inquiry);
            }
            for item in updatedRaw {
                let inquiry = CustomerInquiryDto(json: item);
                updated.append(inquiry);
            }
        } else {
            return nil;
        }
    }
    
    var description: String {
        return "created: \(created); updated: \(updated); ";
    }
}

class CustomerInquiryListRequest: PropsToArrayConvertibleProtocol {
    let guid: String;
    var inquiriesIdxs: [Int]?;
    var createdBefore: String;
    var createdAfter: String;
    var updatedAfter: String;
    
    init(inquiriesIdxs: [Int]?, createdBefore: Date, createdAfter: Date, updatedAfter: Date) {
        self.guid = UserData.guid;
        self.inquiriesIdxs = inquiriesIdxs;
        self.createdBefore = createdBefore.stringWebApiFromDate();
        self.createdAfter = createdAfter.stringWebApiFromDate();
        self.updatedAfter = updatedAfter.stringWebApiFromDate();
    }
    
    init(createdBefore: Date) {
        self.guid = UserData.guid;
        self.createdBefore = createdBefore.stringWebApiFromDate();
        self.createdAfter = "";
        self.updatedAfter = "";
    }
    
    func propsToArray() -> [String: AnyObject]? {
        return [
            "guid": guid as AnyObject,
            "inquiriesIdxs": inquiriesIdxs as AnyObject,
            "createdBefore": createdBefore as AnyObject,
            "createdAfter": createdAfter as AnyObject,
            "updatedAfter": updatedAfter as AnyObject
        ];
    }
}

// MARK: InquiryListForRetailer

class RetailerInquiryListResponse: ApiResponseProtocol {
	var created = [RetailerInquiryDto]();
    var updated = [RetailerInquiryDto]();
	
	required init?(json: AnyObject) {
		if let createdRaw = json.value(forKeyPath: "created") as? [AnyObject],
            let updatedRaw = json.value(forKeyPath: "updated") as? [AnyObject] {
			for item in createdRaw {
				let inquiry = RetailerInquiryDto(json: item);
				created.append(inquiry);
			}
            for item in updatedRaw {
                let inquiry = RetailerInquiryDto(json: item);
                updated.append(inquiry);
            }
		} else {
			return nil;
		}
	}
	
	var description: String {
		return "created: \(created); updated: \(updated); ";
	}
}

class RetailerInquiryListRequest: PropsToArrayConvertibleProtocol {
    let guid: String;
    var inquiriesIdxs: [Int]?;
    var createdBefore: String;
    var createdAfter: String;
    var updatedAfter: String;
    var filter: [String: String];
    
    init(inquiriesIdxs: [Int]?, createdBefore: Date, createdAfter: Date, updatedAfter: Date, filter: InquiriesFilter) {
        self.guid = UserData.guid;
        self.inquiriesIdxs = inquiriesIdxs;
        self.createdBefore = createdBefore.stringWebApiFromDate();
        self.createdAfter = createdAfter.stringWebApiFromDate();
        self.updatedAfter = updatedAfter.stringWebApiFromDate();
        self.filter = filter.dictionary;
    }
    
    init(createdBefore: Date, filter: InquiriesFilter) {
        self.guid = UserData.guid;
        self.createdBefore = createdBefore.stringWebApiFromDate();
        self.createdAfter = "";
        self.updatedAfter = "";
        self.filter = filter.dictionary;
    }
    
    func propsToArray() -> [String: AnyObject]? {
        return [
            "guid": guid as AnyObject,
            "inquiriesIdxs": inquiriesIdxs as AnyObject,
            "createdBefore": createdBefore as AnyObject,
            "createdAfter": createdAfter as AnyObject,
            "updatedAfter": updatedAfter as AnyObject,
            "filter": filter as AnyObject
        ];
    }
}
