//
//  UserDto.swift
//  AMarket
//
//  Created by MacUser on 9/26/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class UserDto: CustomStringConvertible {
    var id: Int;
	var username: String;
	var companyName: String?;
	var address: String?;
	var webSiteUrl: String?;
    var logoPath: String;
	
	init?(json: AnyObject) {
		if let id = json.value(forKeyPath: "id") as? Int
		{
            self.id = id;
            self.username = json.value(forKeyPath: "username") as! String;
			self.companyName = json.value(forKeyPath: "companyName") as? String!;
			self.address = json.value(forKeyPath: "address") as? String!;
			self.webSiteUrl = json.value(forKeyPath: "webSiteUrl") as? String!;
            self.logoPath = json.value(forKeyPath: "logoPath") as! String;
		} else {
			return nil;
		}
	}
	
	var description: String {
		return "id: \(id); username: \(username); companyName: \(companyName); address: \(address); webSiteUrl: \(webSiteUrl); logoPath: \(logoPath);";
	}
}
