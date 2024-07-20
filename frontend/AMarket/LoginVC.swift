//
//  LoginVC.swift
//  AMarket
//
//  Created by MacUser on 8/27/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit
import SwiftValidator

class LoginVC: UIViewController, UITextFieldDelegate, ValidationDelegate {

    private let validator = Validator();
    private var textFields = [UITextField]();
    private var loginRole: Role!;
    private var isOnTheFlyValidationActive = false;

    @IBOutlet weak var emailTextField: UITextField!;
    @IBOutlet weak var emailErrorLabel: UILabel!;
    @IBOutlet weak var passwordTextField: UITextField!;
    @IBOutlet weak var passwordErrorLabel: UILabel!;
    @IBOutlet weak var scrollView: UIScrollView!;
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!;
    
	override func viewDidLoad() {
		super.viewDidLoad();
		UserData.loginNavigationVC = parent as? UINavigationController;
        setupTextFields();
        setupGestureRecognizers();
	}
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        addKeyboardChangeFrameObserver(
            willShow: { height in self.bottomConstraint.constant = height; },
            willHide: { height in self.bottomConstraint.constant = 0; }
        );
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated);
        removeKeyboardObserver();
    }

	@IBAction func loginCustomerPressed(_ sender: AnyObject) {
        if ((passwordTextField.text == nil || passwordTextField.text! == "") && Configs.shared.env == Environment.DebugOnline) {
            emailTextField.text = "test@email.ua";
            passwordTextField.text = "Testpassword";
            UserData.udid = "1";
        }
        loginRole = .Customer;
        validator.validate(delegate: self);
	}

	@IBAction func loginRetailerPressed(_ sender: AnyObject) {
        if ((passwordTextField.text == nil || passwordTextField.text! == "") && Configs.shared.env == Environment.DebugOnline) {
            emailTextField.text = "test@email.ua";
            passwordTextField.text = "Testpassword";
            UserData.udid = "2";
        }
        loginRole = .Retailer;
        validator.validate(delegate: self);
	}
    
    private func setupTextFields() {
        textFields.append(emailTextField);
        textFields.append(passwordTextField);
        for textField in textFields {
            textField.delegate = self;
        }
        setupValidation();
    }
    
    private func setupGestureRecognizers() {
        let singleTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(scrollViewDidTap(sender:)));
        singleTapGestureRecognizer.numberOfTapsRequired = 1;
        singleTapGestureRecognizer.isEnabled = true;
        singleTapGestureRecognizer.cancelsTouchesInView = false;
        scrollView.addGestureRecognizer(singleTapGestureRecognizer);
    }
    
    private func setupValidation() {
        validator.registerField(textField: emailTextField, errorLabel: emailErrorLabel, rules: [EmailRule()]);
        validator.registerField(textField: passwordTextField, errorLabel: passwordErrorLabel, rules: [RequiredRule(), PasswordRule()]);
        resetValidationErrorLabels();
        validator.styleTransformers(
            success: { validationRule in
                validationRule.textField.backgroundColor = nil;
            },
            error: { validationError in
                validationError.textField.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0.3);
            }
        );
    }
    
    private func resetValidationErrorLabels() {
        for item in validator.validations {
            item.value.errorLabel!.isHidden = true;
        }
    }
    
    private func resetTextFields() {
        for textField in textFields {
            textField.text = nil;
        }
    }
    
    private func setupOnTheFlyValidation() {
        for item in validator.validations {
            let field = item.key;
            field.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged);
        }
    }
    
    @objc private func textFieldDidChange() {
        validator.validate(delegate: self);
    }

    static func tryLogin(_ vc: UIViewController, _ roleName: Role, _ email: String, _ password: String) {
        ProgressHud.start(in: vc.view);
        let model = UserLoginRequest(
            uniqueId: UserData.udid, roleName: roleName.rawValue,
            email: email, password: password
        );
        ApiUser.login(
            model: model,
            success: { resp in
                UserData.guid = resp.guid;
                UserData.user = resp.user;
                let nvc = vc.storyboard!.instantiateViewController(withIdentifier: "\(roleName.rawValue)\(StrId.NavigationControllerId.rawValue)");
                AppDelegate.shared.switchRootViewController(rootViewController: nvc, options: .transitionFlipFromRight);
            },
            error: { resp in
                Alert.show(vc, title: "Ошибка", msg: resp.message);
            },
            always: {
                ProgressHud.stop();
            }
        );
	}
    
    func scrollViewDidTap(sender: UITapGestureRecognizer) {
        view.endEditing(true);
    }
    
    //MARK:- UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField != textFields.last!) {
            let index = textFields.index(of: textField)!;
            textFields[index + 1].becomeFirstResponder();
        } else {
            textField.resignFirstResponder();
        }
        return true;
    }
    
    //MARK:- ValidationDelegate
    
    func validationSuccessful() {
        resetValidationErrorLabels();
        LoginVC.tryLogin(self, loginRole, emailTextField.text!, passwordTextField.text!);
        resetTextFields();
    }
    
    func validationFailed(errors: [UITextField : ValidationError]) {
        resetValidationErrorLabels();
        for item in errors {
            item.value.errorLabel!.isHidden = false;
        }
        if !isOnTheFlyValidationActive {
            setupOnTheFlyValidation();
            isOnTheFlyValidationActive = true;
        }
    }

}

