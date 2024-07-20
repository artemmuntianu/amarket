//
//  EnterSecurityCodeView
//  AMarket
//
//  Created by Artem on 01/17/17.
//  Copyright © 2017 OrgName. All rights reserved.
//

import UIKit

class EnterSecurityCodeView: UIView {
    
    var okButtonPressedHandler: ((String?) -> Void)?;
    
    @IBOutlet weak var codeField: UITextField!;
    @IBOutlet weak var okButton: UIButton!;

    @IBAction func okButtonPressed(_ sender: UIButton) {
        okButtonPressedHandler?(codeField.text);
    }
    
}
