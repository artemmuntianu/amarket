//
//  SignupVC.swift
//  AMarket
//
//  Created by Artem on 11/28/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit
import SwiftValidator

class SignupVC: UIViewController, UITextFieldDelegate, ValidationDelegate {

    private var signupRole: Role!;
    private var enterSecurityCodeView: EnterSecurityCodeView!;
    private let validator = Validator();
    private var textFields = [UITextField]();
    private var isOnTheFlyValidationActive = false;
    
    @IBOutlet weak var companyNameField: UITextField!;
    @IBOutlet weak var companyNameErrorLabel: UILabel!;
    @IBOutlet weak var personNameField: UITextField!;
    @IBOutlet weak var personNameErrorLabel: UILabel!;
    @IBOutlet weak var emailField: UITextField!;
    @IBOutlet weak var emailErrorLabel: UILabel!;
    @IBOutlet weak var passwordField: UITextField!;
    @IBOutlet weak var passwordErrorLabel: UILabel!;
    @IBOutlet weak var secretWordField: UITextField!;
    @IBOutlet weak var secretWordErrorLabel: UILabel!;
    @IBOutlet weak var scrollView: UIScrollView!;
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!;
    @IBOutlet /*not weak*/ var scrollContainerBigHeightConstraint: NSLayoutConstraint!;
    @IBOutlet /*not weak*/ var scrollContainerSmallHeightConstraint: NSLayoutConstraint!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        setupTextFields();
        setupGestureRecognizers();
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        addKeyboardChangeFrameObserver(
            willShow: { height in
                self.bottomConstraint.constant = height;
                self.scrollContainerBigHeightConstraint.isActive = false;
                self.scrollContainerSmallHeightConstraint.isActive = true;
            },
            willHide: { height in
                self.bottomConstraint.constant = 0;
                self.scrollContainerBigHeightConstraint.isActive = true;
                self.scrollContainerSmallHeightConstraint.isActive = false;
            }
        );
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated);
        removeKeyboardObserver();
    }
    
    @IBAction func signupCustomerPressed(_ sender: AnyObject) {
        signupRole = .Customer;
        validator.validate(delegate: self);
    }
    
    @IBAction func signupRetailerPressed(_ sender: AnyObject) {
        signupRole = .Retailer;
        validator.validate(delegate: self);
    }
    
    private func setupTextFields() {
        textFields.append(companyNameField);
        textFields.append(personNameField);
        textFields.append(emailField);
        textFields.append(passwordField);
        textFields.append(secretWordField);
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
        validator.registerField(textField: personNameField, errorLabel: personNameErrorLabel, rules: [RequiredRule()]);
        validator.registerField(textField: passwordField, errorLabel: passwordErrorLabel, rules: [RequiredRule(), PasswordRule()]);
        validator.registerField(textField: secretWordField, errorLabel: secretWordErrorLabel, rules: [RequiredRule()]);
        validator.registerField(textField: emailField, errorLabel: emailErrorLabel, rules: [EmailRule()]);
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
    
    private func setupOnTheFlyValidation() {
        for item in validator.validations {
            let field = item.key;
            field.addTarget(self, action: #selector(textFieldDidChange), for: UIControlEvents.editingChanged);
        }
    }
    
    @objc private func textFieldDidChange() {
        validator.validate(delegate: self);
    }
    
    private func trySignup(_ roleName: Role, _ securityCode: String) {
        ProgressHud.start(in: view);
        let model = UserSignupRequest(
            uniqueId: UserData.udid,
            roleName: roleName.rawValue,
            email: emailField.text!,
            password: passwordField.text!,
            secretWord: secretWordField.text!,
            username: personNameField.text!,
            securityCode: securityCode,
            companyName: companyNameField.text
        );
        ApiUser.signup(
            model: model,
            success: { resp in
                LoginVC.tryLogin(self, roleName, model.email, model.password);
            },
            error: { resp in
                Alert.show(self, title: "Ошибка", msg: resp.message);
            },
            always: {
                ProgressHud.stop();
            }
        );
    }
    
    private func tryConfirmEmail(_ roleName: Role) {
        ProgressHud.start(in: view);
        let model = UserConfirmEmailRequest(
            email: emailField.text!
        );
        ApiUser.confirmEmail(
            model: model,
            success: { resp in
                self.showEnterSecurityCodeView(roleName, resp.code);
            },
            error: { resp in
                Alert.show(self, title: "Ошибка", msg: resp.message);
            },
            always: {
                ProgressHud.stop();
            }
        );
    }
    
    private func showEnterSecurityCodeView(_ roleName: Role, _ codeFromServer: String) {
        enterSecurityCodeView = Bundle.main.loadNibNamed(StrId.EnterSecurityCodeView.rawValue, owner: nil, options: nil)?.first as! EnterSecurityCodeView;
        enterSecurityCodeView.okButtonPressedHandler = { codeFromUser in
            self.hideEnterSecurityCodeView();
            if (codeFromUser == codeFromServer) {
                self.trySignup(roleName, codeFromServer);
            } else {
                Alert.show(self, title: "Ошибка", msg: "Введенный код неверный");
            }
        };
        enterSecurityCodeView.codeField.becomeFirstResponder();
        enterSecurityCodeView.translatesAutoresizingMaskIntoConstraints = false;
        view.addSubview(enterSecurityCodeView);
        view.addConstraints([
            NSLayoutConstraint(item: scrollView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: enterSecurityCodeView, attribute: NSLayoutAttribute.bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: enterSecurityCodeView, attribute: NSLayoutAttribute.top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: enterSecurityCodeView, attribute: NSLayoutAttribute.left, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.right, relatedBy: NSLayoutRelation.equal, toItem: enterSecurityCodeView, attribute: NSLayoutAttribute.right, multiplier: 1, constant: 0)
        ]);
    }
    
    private func hideEnterSecurityCodeView() {
        enterSecurityCodeView.removeFromSuperview();
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
        tryConfirmEmail(signupRole);
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
