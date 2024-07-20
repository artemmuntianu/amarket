//
//  AppDelegate.swift
//  AMarket
//
//  Created by MacUser on 8/27/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	static var shared: AppDelegate!;
	
	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		AppDelegate.shared = self;
		return true;
	}
	
	func switchRootViewController(rootViewController: UIViewController, options: UIViewAnimationOptions = [], animated: Bool = true, completion: (() -> Void)? = nil) {
		if (animated) {
			UIView.transition(with: window!, duration: 0.5, options: options,
				animations: {
					let oldState: Bool = UIView.areAnimationsEnabled
					UIView.setAnimationsEnabled(false)
					self.window!.rootViewController = rootViewController
					UIView.setAnimationsEnabled(oldState)
				},
				completion: { (finished: Bool) -> () in
					completion?();
				});
		} else {
			window!.rootViewController = rootViewController
		}
	}

}

