//
//  InquiriesFilter.swift
//  AMarket
//
//  Created by Artem on 3/2/17.
//  Copyright © 2017 OrgName. All rights reserved.
//

import Foundation

class InquiriesFilter {
    var hasOffersFrom: Member?;
    var hasNoOffersFrom: Member?;
    var isClosed: Bool?;
    var isDeclaredInPlist: Bool {
        get {
            return PlistManager.shared.getValueForKey(key: key) != nil;
        }
    }
    var dictionary: [String: String] {
        get {
            return [
                "HasOffersFrom": hasOffersFrom == nil ? "" : hasOffersFrom!.rawValue,
                "HasNoOffersFrom": hasNoOffersFrom == nil ? "" : hasNoOffersFrom!.rawValue,
                "IsClosed": isClosed == nil ? "" : "\(isClosed!)"
            ];
        }
    }
    private let key = "InquiriesFilter";
    
    init() {
        if isDeclaredInPlist {
            let dict = PlistManager.shared.getValueForKey(key: key) as! [String: String];
            if let temp = dict["HasOffersFrom"], temp != "",
                let val = Member.init(rawValue: temp) {
                hasOffersFrom = val;
            }
            if let temp = dict["HasNoOffersFrom"], temp != "",
                let val = Member.init(rawValue: temp) {
                hasNoOffersFrom = val;
            }
            if let temp = dict["IsClosed"], temp != "" {
                isClosed = NSString(string: temp).boolValue;
            }
            save();
        } else {
            PlistManager.shared.addNewItemWithKey(key: key, value: dictionary as AnyObject);
        }
    }
    
    func save() {
        PlistManager.shared.saveValue(value: dictionary as AnyObject, forKey: key);
    }
    
    static func isAllowed(hasOffersFrom: Member?, hasNoOffersFrom: Member?) -> Bool {
        guard let hasOffersFrom = hasOffersFrom, let hasNoOffersFrom = hasNoOffersFrom else {
            return true;
        }
        switch hasOffersFrom {
        case .Me:
            switch hasNoOffersFrom {
            case .Me: return false;
            case .NotMe: return true;
            case .Anybody: return false;
            }
        case .NotMe:
            switch hasNoOffersFrom {
            case .Me: return true;
            case .NotMe: return false;
            case .Anybody: return false;
            }
        case .Anybody:
            switch hasNoOffersFrom {
            case .Me: return true;
            case .NotMe: return true;
            case .Anybody: return false;
            }
        }
    }

    enum Member: String {
        case Me = "Me";
        case NotMe = "NotMe";
        case Anybody = "Anybody";
        
        var index: Int {
            get {
                switch self {
                case InquiriesFilter.Member.Me: return 0;
                case InquiriesFilter.Member.NotMe: return 1;
                case InquiriesFilter.Member.Anybody: return 2;
                }
            }
        }
        
        init(_ index: Int) {
            switch index {
            case 0: self = InquiriesFilter.Member.Me;
            case 1: self = InquiriesFilter.Member.NotMe;
            case 2: self = InquiriesFilter.Member.Anybody;
            default: self = InquiriesFilter.Member.Anybody;
            }
        }
    }
    
}
