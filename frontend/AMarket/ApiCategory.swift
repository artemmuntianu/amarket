//
//  ApiCategory.swift
//  AMarket
//
//  Created by MacUser on 9/6/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class ApiCategory: ApiBase {

	static func list(model: CategoryListRequest, success: @escaping ((CategoryListResponse) -> Void), error: @escaping ((ErrorResponse) -> Void), always: (() -> Void)? = nil) {
		postJson(path: "category/list", model: model, success: success, error: error, always: always);
	}

}

// MARK: CategoryList

class CategoryListResponse: ApiResponseProtocol {
	var categories = [CategoryDto]();

	required init?(json: AnyObject) {
		if let array = json.value(forKey: "categories") as? [AnyObject] {
            for item in array {
                if let category = CategoryDto(json: item) {
                    categories.append(category);
                }
            }
		} else {
			return nil;
		}
	}

	var description: String {
		return "categories: \(categories)";
	}
}

class CategoryListRequest: PropsToArrayConvertibleProtocol {
	let guid: String;

	init(guid: String) {
		self.guid = guid;
	}

	func propsToArray() -> [String: AnyObject]? {
		return [
			"guid": guid as AnyObject
		];
	}
}
