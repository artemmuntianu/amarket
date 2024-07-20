//
//  NewOfferView.swift
//  AMarket
//
//  Created by Artem on 11/22/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class NewOfferView: UIView {
    
    private var price: Double!;
    
    var offerButtonPressedHandler: ((Double) -> Void)?;
    
    @IBOutlet weak var priceField: UITextField!;
    @IBOutlet weak var offerButton: UIButton!;
    
    @IBAction func priceFieldEditingChanged(_ sender: UITextField) {
        if let priceStr = priceField.text,
            let _price = Double(priceStr) {
            price = _price;
            offerButton.isEnabled = true;
        } else {
            offerButton.isEnabled = false;
        }
    }

    @IBAction func offerButtonPressed(_ sender: UIButton) {
        offerButtonPressedHandler?(price);
    }
    
}
