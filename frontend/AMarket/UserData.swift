//
//  UserData.swift
//  AMarket
//
//  Created by MacUser on 9/1/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class UserData {
    static var user: UserDto!;
    static var guid: String!;
	static var udid = UIDevice().identifierForVendor!.uuidString;
	static var loginNavigationVC: UINavigationController?;
	static var retailerRootNavigationVC: UINavigationController?;
	static var retailerInquiryTabBarVC: UITabBarController?;
	static var customerRootNavigationVC: UINavigationController?;
    static var customerOfferTabBarVC: UITabBarController?;
}
