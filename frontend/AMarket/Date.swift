//
//  Date.swift
//  AMarket
//
//  Created by Artem on 10/27/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import Foundation

extension Date {
    
    static let WEB_API_DATETIME_FORMAT = "yyyy-MM-dd'T'HH:mm:ss.SSS";
    
    static let dateFormatterWebApi: DateFormatter = {
        let dateFormatter = DateFormatter();
        dateFormatter.dateFormat = Date.WEB_API_DATETIME_FORMAT;
        dateFormatter.timeZone = TimeZone.init(abbreviation: "UTC");
        return dateFormatter;
    }();
    
    func stringWebApiFromDate() -> String {
        return Date.dateFormatterWebApi.string(from: self);
    }
    
}
