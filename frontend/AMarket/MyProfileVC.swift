//
//  MyProfileVC.swift
//  AMarket
//
//  Created by MacUser on 01/23/17.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit
import AlamofireImage

class MyProfileVC: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    private var textFields = [UITextField]();
    private var pickedImage: UIImage?;
    
    private lazy var imagePicker: UIImagePickerController = {
        let imagePicker = UIImagePickerController();
        imagePicker.allowsEditing = false;
        imagePicker.sourceType = .photoLibrary;
        imagePicker.delegate = self;
        return imagePicker;
    }();
    
    var backButtonPressedHandler: (() -> Void)?;
    
    @IBOutlet weak var profileImageView: UIImageView!;
    @IBOutlet weak var nameField: UITextField!;
    @IBOutlet weak var addressField: UITextField!;
    @IBOutlet weak var webSiteUrlField: UITextField!;
    
	override func viewDidLoad() {
		super.viewDidLoad();
        setupTextFields();
        ProgressHud.start(in: view);
        let model = UserGetRequest(userId: UserData.user.id);
        ApiUser.get(
            model: model,
            success: { resp in
                self.nameField.text = "\(resp.user.username)";
                self.addressField.text = resp.user.address ?? "";
                self.webSiteUrlField.text = resp.user.webSiteUrl ?? "";
                self.profileImageView.image = UIImage.userLogo(from: resp.user.logoPath.replacingOccurrences(of: ".jpg", with: "_200_200.jpg"), with: self.profileImageView.frame.size);
            },
            error: { resp in
                Alert.show(self, title: "Ошибка", msg: resp.message, okPressedHandler: {
                    self.view.removeFromSuperview();
                });
            },
            always: {
                ProgressHud.stop();
            }
        );
	}

    @IBAction func changeImageButtonPressed(_ sender: UIButton) {
        present(imagePicker, animated: true);
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        backButtonPressedHandler?();
        navigationController!.popViewController(animated: true);
    }
    
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        ProgressHud.start(in: view);
        let model = UserUpdateRequest(
            userName: nameField.text ?? "",
            address: addressField.text ?? "",
            webSiteUrl: webSiteUrlField.text ?? "",
            image: pickedImage
        );
        ApiUser.update(
            model: model,
            success: { resp in
                Alert.show(self, title: "Сообщение", msg: "Изменения сохранены", okPressedHandler:
                {
                    UserData.user = resp.user;
                    self.backButtonPressed(UIBarButtonItem());
                });
            },
            error: { resp in
                Alert.show(self, title: "Ошибка", msg: resp.message);
            },
            always: {
                ProgressHud.stop();
            }
        );
    }
    
    private func setupTextFields() {
        textFields.append(nameField);
        textFields.append(addressField);
        textFields.append(webSiteUrlField);
        for textField in textFields {
            textField.delegate = self;
        }
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
    
    //MARK:- UIImagePickerControllerDelegate
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            let profileImageFilter = AspectScaledToFillSizeWithRoundedCornersFilter(
                size: profileImageView.frame.size,
                radius: profileImageView.frame.size.width,
                divideRadiusByImageScale: true
            );
            profileImageView.image = profileImageFilter.filter(image);
            pickedImage = image;
        }
        dismiss(animated: true, completion: nil);
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil);
    }

}

