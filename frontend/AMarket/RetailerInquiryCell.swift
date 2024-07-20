//
//  RetailerInquiryCell.swift
//  AMarket
//
//  Created by MacUser on 9/26/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class RetailerInquiryCell: UITableViewCell {

    private var hiddenImage: UIImageView?;
    private var closedImage: UIImageView?;
    private var priceTagImage: UIImageView?;
    private var mostLeftVisibleImage: UIImageView?;
    
	@IBOutlet weak var customerNameLabel: UILabel!;
	@IBOutlet weak var myTextLabel: UILabel!;
    @IBOutlet weak var offersAmountLabel: UILabel!;
    @IBOutlet weak var offersAmountImage: UIImageView!;
    
    func setup(_ inquiry: RetailerInquiryDto) {
        layoutMargins = UIEdgeInsets.zero; // needed for separator insets
        customerNameLabel.text = inquiry.customerName;
        myTextLabel.text = inquiry.text;
        offersAmountLabel.text = "\(inquiry.offersAmount)";
        let stateChanged = true;
        if stateChanged {
            mostLeftVisibleImage = offersAmountImage;
            removeIcons();
            addIcons(inquiry);
        }
    }
    
    private func removeIcons() {
        if hiddenImage != nil { hiddenImage!.removeFromSuperview() }
        if closedImage != nil { closedImage!.removeFromSuperview() }
        if priceTagImage != nil { priceTagImage!.removeFromSuperview() }
    }
    
    private func addIcons(_ inquiry: RetailerInquiryDto) {
        if inquiry.isOffered || inquiry.isOfferRejected {
            let imgName = inquiry.isOffered && inquiry.isOfferRejected ? "Price-Tag-Cancelled" : "Price-Tag";
            priceTagImage = UIImageView(image: UIImage(named: imgName)!);
            
            contentView.addSubview(priceTagImage!);
            setupConstraints(for: priceTagImage!, andFor: mostLeftVisibleImage!);
            mostLeftVisibleImage = priceTagImage;
        }
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
