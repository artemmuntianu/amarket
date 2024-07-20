//
//  InquiryCell.swift
//  AMarket
//
//  Created by MacUser on 9/3/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class CustomerInquiryCell: UITableViewCell {

    private var closedImage: UIImageView?;
    private var mostLeftVisibleImage: UIImageView?;
    
	@IBOutlet var nameLabel: UILabel!;
    @IBOutlet weak var offersAmountLabel: UILabel!;
    @IBOutlet weak var offersAmountImage: UIImageView!;

    func setup(_ inquiry: CustomerInquiryDto) {
        layoutMargins = UIEdgeInsets.zero; // needed for separator insets
        nameLabel.text = inquiry.nameShortenedTo15Chars;
        offersAmountLabel.text = "\(inquiry.offersAmount)";
        let stateChanged = true;
        if stateChanged {
            mostLeftVisibleImage = offersAmountImage;
            removeIcons();
            addIcons(inquiry);
        }
    }
    
    private func removeIcons() {
        if closedImage != nil { closedImage!.removeFromSuperview() }
    }
    
    private func addIcons(_ inquiry: CustomerInquiryDto) {
        if inquiry.isClosed {
            closedImage = UIImageView(image: UIImage(named: "Lock")!);
            contentView.addSubview(closedImage!);
            setupConstraints(for: closedImage!, andFor: mostLeftVisibleImage!);
            mostLeftVisibleImage = closedImage;
        }
    }
    
    private func setupConstraints(for leftImage: UIImageView, andFor rightImage: UIImageView) {
        leftImage.translatesAutoresizingMaskIntoConstraints = false;
        contentView.addConstraints([
            NSLayoutConstraint(item: rightImage, attribute: .leading, relatedBy: .equal, toItem: leftImage, attribute: .trailing, multiplier: 1, constant: 5),
            NSLayoutConstraint(item: leftImage, attribute: .top, relatedBy: .equal, toItem: rightImage, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: leftImage, attribute: .width, relatedBy: .equal, toItem: rightImage, attribute: .width, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: leftImage, attribute: .height, relatedBy: .equal, toItem: rightImage, attribute: .height, multiplier: 1, constant: 0)
        ]);
    }
    
}
