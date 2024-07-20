//
//  CategoryCell.swift
//  AMarket
//
//  Created by MacUser on 3/28/17.
//  Copyright © 2017 OrgName. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet var categoryNameLabel: UILabel!;
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!;
    
    func setup(_ categoryName: String, _ level: Int) {
        layoutMargins = UIEdgeInsets.zero; // needed for separator insets
        categoryNameLabel.text = categoryName;
        leadingConstraint.constant = CGFloat(level) * 20;
    }

}
