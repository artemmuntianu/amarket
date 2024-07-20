//
//  MainMenuProtocol.swift
//  AMarket
//
//  Created by Artem on 1/27/17.
//  Copyright © 2017 OrgName. All rights reserved.
//

import UIKit

protocol MainMenuProtocol {
    func showMainMenu(vc: UIViewController, myProfileSegueId: String, cancelledHandler: @escaping ()->());
}

extension MainMenuProtocol {
    func showMainMenu(vc: UIViewController, myProfileSegueId: String, cancelledHandler: @escaping ()->()) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet);
        actionSheet.addAction(UIAlertAction(title: "Аккаунт", style: .default, handler: { action in
            vc.performSegue(withIdentifier: myProfileSegueId, sender: vc);
        }));
        actionSheet.addAction(UIAlertAction(title: "Выйти", style: .default, handler: { action in
            AppDelegate.shared.switchRootViewController(rootViewController: UserData.loginNavigationVC!, options: .transitionFlipFromLeft);
        }));
        actionSheet.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: { action in
            cancelledHandler();
        }));
        vc.present(actionSheet, animated: true, completion: nil);
    }
}
