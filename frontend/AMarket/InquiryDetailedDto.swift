//
//  InquiryDetailedDto.swift
//  AMarket
//
//  Created by MacUser on 9/13/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Alamofire

class InquiryDetailedDto: CustomStringConvertible {
	var name: String;
	var text: String;
	var categoryName: String;
	var offers: [OfferDto];
	var isClosed: Bool;
	var created: Date;

	init?(json: AnyObject) {
		if let name = json.value(forKeyPath: "name") as? String,
			let text = json.value(forKeyPath: "text") as? String,
			let categoryName = json.value(forKeyPath: "categoryName") as? String,
			let isClosed = json.value(forKeyPath: "isClosed") as? Bool,
			let created = json.value(forKeyPath: "created") as? String,
			let jsonArr = json.value(forKeyPath: "offers") as? [AnyObject]
		{
			self.name = name;
			self.text = text;
			self.categoryName = categoryName;
			self.isClosed = isClosed;
			self.created = created.dateFromStringWebApi();
			self.offers = [OfferDto]();
			for jsonItem in jsonArr {
				if let offer = OfferDto(json: jsonItem) {
					offers.append(offer);
				}
			}
		} else {
			return nil;
		}
	}

	var description: String {
		return "name: \(name); text: \(text); categoryName: \(categoryName); offers: \(offers); isClosed: \(isClosed); created: \(created);";
	}

	var nameShortenedTo15Chars: String {
		return name.characters.count <= 15 ? name : "\(name.substring(to: name.characters.index(name.startIndex, offsetBy: 15)))...";
	}
}
