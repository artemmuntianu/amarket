//
//  Configs.swift
//  AMarket
//
//  Created by MacUser on 9/5/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit
import Foundation

class Configs {

	var env: Environment;
	var apiBaseUrl: String;
    var inquiriesFilter = InquiriesFilter();
    
    static let shared = Configs();

	private init() {
		let environment = Bundle.main.object(forInfoDictionaryKey: "Environment") as! String;
		switch environment {
		case Environment.DebugOnline.rawValue:
			env = Environment.DebugOnline;
			apiBaseUrl = "http://192.168.1.104:88/api/";
		case Environment.DebugOffline.rawValue:
			env = Environment.DebugOffline;
			apiBaseUrl = ""; // empty
		case Environment.Production.rawValue: fallthrough;
		default:
			env = Environment.Production;
			apiBaseUrl = ""; // TODO: TBD
		}
	}

}
