//
//  UIImage.swift
//  AMarket
//
//  Created by Artem on 2/16/17.
//  Copyright © 2017 OrgName. All rights reserved.
//

import UIKit
import AlamofireImage

extension UIImage {
    
    public static func userLogo(from url: String, with size: CGSize) -> UIImage {
        var logoImg: UIImage;
        if let data = NSData(contentsOf: URL(string: url)!)
        {
            logoImg = UIImage(data: data as Data)!;
            let profileImageFilter = AspectScaledToFillSizeWithRoundedCornersFilter(
                size: size,
                radius: size.width,
                divideRadiusByImageScale: true
            );
            logoImg = profileImageFilter.filter(logoImg);
        } else {
            logoImg = UIImage(named: "userAvatar")!;
        }
        return logoImg;
    }
    
}
