//
//  UIViewController.swift
//  AMarket
//
//  Created by MacUser on 9/26/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

extension UIViewController {
    
    typealias KeyboardHeightClosure = (CGFloat) -> ();
	
    //	In the CS193p class, Paul Hegarty shows the uses of extensions to deal with Navigation Controller segues (Lecture 8: 23'). The UIViewController extension introduces a new computed property: contentViewController available to all UIViewControllers (and subclasses).
	var contentViewController: UIViewController {
		var vc = self;
		while true {
			if let navcon = vc as? UINavigationController {
				vc = navcon.visibleViewController ?? vc;
			} else if let tabcon = vc as? UITabBarController {
				vc = tabcon.selectedViewController ?? tabcon.viewControllers?[0] ?? vc;
			} else {
				return vc;
			}
		}
	}
    
    //MARK: - Observers
    
    func addObserverForNotification(notificationName: String, actionBlock: @escaping (Notification) -> Void) {
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: notificationName), object: nil, queue: OperationQueue.main, using: actionBlock);
    }
    
    func removeObserver(observer: AnyObject, notificationName: String) {
        NotificationCenter.default.removeObserver(observer, name: NSNotification.Name(rawValue: notificationName), object: nil);
    }
    
    //MARK: - Keyboard observers
    
    func addKeyboardChangeFrameObserver(willShow willShowClosure: KeyboardHeightClosure?,
                                        willHide willHideClosure: KeyboardHeightClosure?) {
        NotificationCenter.default.addObserver(
            forName: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil, queue: OperationQueue.main,
            using: { [weak self](notification) in
                if let userInfo = notification.userInfo,
                    let frame = (userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue,
                    let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? Double,
                    let c = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? UInt,
                    let kFrame = self?.view.convert(frame, from: nil),
                    let kBounds = self?.view.bounds {
                    
                    let animationType = UIViewAnimationOptions(rawValue: c)
                    let kHeight = kFrame.size.height
                    UIView.animate(withDuration: duration, delay: 0, options: animationType,
                        animations: {
                            if kBounds.intersects(kFrame) { // keyboard will be shown
                                willShowClosure?(kHeight)
                            } else { // keyboard will be hidden
                                willHideClosure?(kHeight)
                            }
                        },
                        completion: nil
                    );
                } else {
                    print("Invalid conditions for UIKeyboardWillChangeFrameNotification")
                }
            }
        );
    }
    
    func removeKeyboardObserver() {
        removeObserver(observer: self, notificationName: NSNotification.Name.UIKeyboardWillChangeFrame.rawValue);
    }
	
}
