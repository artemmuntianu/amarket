//
//  InquiryInfoForRetailerVC.swift
//  AMarket
//
//  Created by MacUser on 9/26/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class InquiryInfoForRetailerVC: UIViewController {
		
	var inquiry: RetailerInquiryDto!;
    var customer: UserDto!;
	var backButtonPressedHandler: (() -> Void)?;
	
	@IBOutlet var myDescriptionLabel: UILabel!;
	@IBOutlet var categoryLabel: UILabel!;
	@IBOutlet var customerNameLabel: UILabel!;
	@IBOutlet var customerAddressLabel: UILabel!;
	@IBOutlet var customerWebSiteUrlLabel: UILabel!;
	
	override func viewDidLoad() {
		super.viewDidLoad();
		myDescriptionLabel.text = "                    " + inquiry.text;
		categoryLabel.text = "                    " + inquiry.categoryName;
        customerNameLabel.text = "\(customer.username)";
        customerAddressLabel.text = customer.address ?? "";
        customerWebSiteUrlLabel.text = customer.webSiteUrl ?? "";
	}
	
	@IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
		backButtonPressedHandler?();
		AppDelegate.shared.switchRootViewController(rootViewController: UserData.retailerRootNavigationVC!, options: .transitionFlipFromLeft);
	}
	
}
