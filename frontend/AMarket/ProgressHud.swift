//
//  ProgressHud.swift
//  AMarket
//
//  Created by Artem on 10/31/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class ProgressHud {

    var hudView: UIView!;
    
    static private var shared: ProgressHud?;
    static private var activeAnimationsCount = 0;
    static private var activeView: UIView!;

    init(_ view: UIView)
    {
        hudView = Bundle.main.loadNibNamed(StrId.ProgressHudView.rawValue, owner: nil, options: nil)!.first as! UIView;
        hudView.layer.cornerRadius = 10;
        hudView.translatesAutoresizingMaskIntoConstraints = false;
        hudView.addConstraints([
            NSLayoutConstraint(item: hudView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 151),
            NSLayoutConstraint(item: hudView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 50)
        ]);
    }

    func startAnimating()
    {
        UIApplication.shared.beginIgnoringInteractionEvents();
    }

    func stopAnimating()
    {
        UIApplication.shared.endIgnoringInteractionEvents();
        hudView.removeFromSuperview();
    }
    
    static func start(in view: UIView) {
        if (shared == nil) {
            activeView = view;
            shared = ProgressHud(activeView);
        }
        if (view == activeView) {
            if (activeAnimationsCount == 0) {
                activeView.addSubview(shared!.hudView);
                activeView.addConstraints([
                    NSLayoutConstraint(item: shared!.hudView, attribute: NSLayoutAttribute.centerXWithinMargins, relatedBy: .equal, toItem: view, attribute: .centerXWithinMargins, multiplier: 1, constant: 0),
                    NSLayoutConstraint(item: shared!.hudView, attribute: NSLayoutAttribute.centerYWithinMargins, relatedBy: .equal, toItem: view, attribute: .centerYWithinMargins, multiplier: 1, constant: 0)
                ]);
                shared!.startAnimating();
            }
            activeAnimationsCount += 1;
        } else {
            shared!.stopAnimating();
            activeAnimationsCount = 0;
            shared = nil;
            activeView = nil;
            start(in: view);
        }
    }
    
    static func stop() {
        if (activeAnimationsCount > 0) {
            activeAnimationsCount -= 1;
            if (activeAnimationsCount == 0) {
                shared!.stopAnimating();
            }
        }
    }
    
}
