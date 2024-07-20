//
//  ApiResponseProtocol.swift
//  AMarket
//
//  Created by MacUser on 9/1/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

protocol ApiResponseProtocol: CustomStringConvertible {
	init?(json: AnyObject);
	var description: String { get };
}
