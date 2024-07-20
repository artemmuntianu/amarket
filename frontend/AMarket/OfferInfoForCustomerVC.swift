//
//  OfferInfoForCustomerVC.swift
//  AMarket
//
//  Created by MacUser on 12/7/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class OfferInfoForCustomerVC: UIViewController {
		
	var offer: OfferDto!;
    var retailer: UserDto!;
	var backButtonPressedHandler: (() -> Void)?;
	
	@IBOutlet var priceLabel: UILabel!;
	@IBOutlet var retailerNameLabel: UILabel!;
	@IBOutlet var retailerAddressLabel: UILabel!;
	@IBOutlet var retailerWebSiteUrlLabel: UILabel!;
	
	override func viewDidLoad() {
		super.viewDidLoad();
		priceLabel.text = "                    " + "\(offer.price)";
        retailerNameLabel.text = "\(retailer.username)";
        retailerAddressLabel.text = retailer.address ?? "";
        retailerWebSiteUrlLabel.text = retailer.webSiteUrl ?? "";
	}
	
	@IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
		backButtonPressedHandler?();
		AppDelegate.shared.switchRootViewController(rootViewController: UserData.customerRootNavigationVC!, options: .transitionFlipFromLeft);
	}
	
}
