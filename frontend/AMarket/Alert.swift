//
//  Alert.swift
//  AMarket
//
//  Created by MacUser on 9/5/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class Alert {

    static func show(_ vc: UIViewController, title: String, msg: String,
                     okPressedHandler: (() -> Void)? = nil,
                     cancelPressedHandler: (() -> Void)? = nil)
    {
        let alertVC = UIAlertController(title: title, message: msg, preferredStyle: .alert);
        let okPressedAction = UIAlertAction(title: "OK", style: .default, handler: { _ in
            alertVC.dismiss(animated: true, completion: nil);
            okPressedHandler?();
        });
        alertVC.addAction(okPressedAction);
        if (cancelPressedHandler != nil) {
            let cancelPressedAction = UIAlertAction(title: "Отмена", style: .default, handler: { _ in
                alertVC.dismiss(animated: true, completion: nil);
                cancelPressedHandler?();
            });
            alertVC.addAction(cancelPressedAction);
        }
        vc.present(alertVC, animated: true, completion: nil);
    }
    
	static func show(_ vc: UIViewController, title: String, msg: String,
	                 okPressedHandler: (() -> Void)? = nil)
    {
        show(vc, title: title, msg: msg, okPressedHandler: okPressedHandler, cancelPressedHandler: nil);
	}

}
