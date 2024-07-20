//
//  CategoriesVC.swift
//  AMarket
//
//  Created by MacUser on 9/5/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    class CategoryModel {
        var id: Int;
        var name: String;
        var level: Int;
        init(_ id: Int, _ name: String, _ level: Int) {
            self.id = id;
            self.name = name;
            self.level = level;
        }
    }
    
	var categories = [CategoryModel]();
	var categorySelectedHandler: ((String) -> Void)?;

	@IBOutlet var tableView: UITableView!;

	override func viewDidLoad() {
		super.viewDidLoad();
		tableView.dataSource = self;
		tableView.delegate = self;
	}

	override func viewDidAppear(_ animated: Bool) {
        ProgressHud.start(in: view);
        let model = CategoryListRequest(guid: UserData.guid);
		ApiCategory.list(
			model: model,
			success: { resp in
                for cat1 in resp.categories {
                    self.categories.append(CategoryModel(cat1.id, cat1.name, 0));
                    for cat2 in cat1.children {
                        self.categories.append(CategoryModel(cat2.id, cat2.name, 1));
                        for cat3 in cat2.children {
                            self.categories.append(CategoryModel(cat3.id, cat3.name, 2));
                        }
                    }
                }
				self.tableView.reloadData();
			},
			error: { resp in
				Alert.show(self, title: "Ошибка", msg: resp.message, okPressedHandler: {
					_ = self.navigationController?.popViewController(animated: true);
				});
            },
            always: {
                ProgressHud.stop();
            }
		);
	}

	@IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
		_ = navigationController?.popViewController(animated: true);
	}

	// MARK: - UITableViewDelegate, UITableViewDataSource

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return categories.count;
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: StrId.CategoryCellId.rawValue)! as! CategoryCell;
        let cat = categories[indexPath.row];
        cell.setup(cat.name, cat.level);
		return cell;
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		categorySelectedHandler?(categories[indexPath.row].name);
		_ = navigationController?.popViewController(animated: true);
	}

}
