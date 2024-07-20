//
//  NewInquiryVC.swift
//  AMarket
//
//  Created by MacUser on 9/2/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class NewInquiryVC: UIViewController, UITextFieldDelegate {

	var inquiryCreatedHandler: (() -> Void)?;
	var cancelledHandler: (() -> Void)?;

	@IBOutlet var inquiryNameField: UITextField!;
	@IBOutlet var categoryNameField: UITextField!;
	@IBOutlet var descriptionField: UITextView!;

	override func viewDidLoad() {
		descriptionField.layer.borderColor = UIColor.lightGray.cgColor;
		descriptionField.layer.borderWidth = 1;
		descriptionField.layer.cornerRadius = 5;
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let vc = segue.destination as? CategoriesVC {
			vc.categorySelectedHandler = { categoryName in
				self.categoryNameField.text = categoryName;
			};
		}
	}

	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesBegan(touches, with: event);
		view.endEditing(true);
	}

	@IBAction func categoryFieldPressed(_ sender: UITextField) {
		performSegue(withIdentifier: StrId.NewInquiryToCategoriesSegueId.rawValue, sender: self);
	}

	@IBAction func cancelButtonPressed(_ sender: AnyObject) {
		cancelledHandler?();
		_ = navigationController?.popViewController(animated: true);
	}

	@IBAction func createButtonPressed(_ sender: AnyObject) {
        let model = InquiryCreateRequest(name: inquiryNameField.text!, text: descriptionField.text!, categoryName: categoryNameField.text!, created: Date());
		ApiInquiry.create(
			model: model,
			success: { resp in
				self.inquiryCreatedHandler?();
				_ = self.navigationController?.popViewController(animated: true);
			},
			error: { resp in
				Alert.show(self, title: "Ошибка", msg: resp.message);
			}
		);
	}

	// MARK: - UITextFieldDelegate

	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.resignFirstResponder();
		return true;
	}

}
