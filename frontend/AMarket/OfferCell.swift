//
//  OfferCell.swift
//  AMarket
//
//  Created by MacUser on 9/13/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class OfferCell: UITableViewCell {

    private var isRejectedImage: UIImageView!;
    private var isImageAttachedImage: UIImageView!;
    private var mostLeftVisibleImage: UIImageView?;
    
	@IBOutlet var retailerNameLabel: UILabel!;
	@IBOutlet var priceLabel: UILabel!;
	@IBOutlet var priceImage: UIImageView!;
    
    func setup(_ offer: OfferDto) {
        layoutMargins = UIEdgeInsets.zero; // needed for separator insets
        retailerNameLabel.text = offer.retailerCompanyName ?? offer.retailerUsername;
        priceLabel.text = "\(offer.price)";
        let stateChanged = true;
        if stateChanged {
            mostLeftVisibleImage = priceImage;
            removeIcons();
            addIcons(offer);
        }
    }
    
    private func removeIcons() {
        if isRejectedImage != nil { isRejectedImage!.removeFromSuperview() }
        if isImageAttachedImage != nil { isImageAttachedImage!.removeFromSuperview() }
    }
    
    private func addIcons(_ offer: OfferDto) {
        if offer.isImageAttached {
            isImageAttachedImage = UIImageView(image: UIImage(named: "Image-Attached")!);
            contentView.addSubview(isImageAttachedImage!);
            setupConstraints(for: isImageAttachedImage!, andFor: mostLeftVisibleImage!);
            mostLeftVisibleImage = isImageAttachedImage;
        }
        if offer.isRejected {
            isRejectedImage = UIImageView(image: UIImage(named: "Price-Tag-Cancelled")!);
            contentView.addSubview(isRejectedImage!);
            setupConstraints(for: isRejectedImage!, andFor: mostLeftVisibleImage!);
            mostLeftVisibleImage = isRejectedImage;
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
