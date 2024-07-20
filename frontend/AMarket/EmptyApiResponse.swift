//
//  EmptyApiResponse.swift
//  AMarket
//
//  Created by MacUser on 9/13/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

class EmptyApiResponse: ApiResponseProtocol {
	required init?(json: AnyObject) {
		// empty
	}

	var description: String {
		return "null";
	}
}