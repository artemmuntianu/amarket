//
//  ErrorResponse.swift
//  AMarket
//
//  Created by MacUser on 9/1/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class ErrorResponse: CustomStringConvertible {
	let code: Int;
	let message: String;

	init(json: AnyObject) {
		code = json.value(forKeyPath: "code") as! Int;
		message = json.value(forKeyPath: "message") as! String;
	}

	init(message: String) {
		code = -1;
		self.message = message;
	}

	var description: String {
		return "ERROR -> message: \(message); code: \(code)";
	}
}
