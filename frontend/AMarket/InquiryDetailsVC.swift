//
//  InquiryDetailsVC.swift
//  AMarket
//
//  Created by MacUser on 9/8/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class InquiryDetailsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

	private var timer: Timer?;
	private var inquiry: InquiryDetailedDto?;
    private var needToShowProgressHud = true;
    private var isPollingEnabled = true;
    
	var backButtonPressedHandler: (() -> Void)?;
	var inquiryId: Int!;
	var inquiryNameShortenedTo15Chars: String!;

	@IBOutlet weak var descriptionLabel: UILabel!;
	@IBOutlet weak var categoryNameLabel: UILabel!;
	@IBOutlet weak var tableView: UITableView!;
	@IBOutlet weak var closeInquiryButton: UIBarButtonItem!;
    @IBOutlet weak var noOffersLabel: UILabel!;

	override func viewDidLoad() {
		super.viewDidLoad();
		tableView.dataSource = self;
        tableView.delegate = self;
        descriptionLabel.text = "...";
        categoryNameLabel.text = "...";
		navigationItem.title = inquiryNameShortenedTo15Chars;
		if (Configs.shared.env == Environment.DebugOffline) {
			// TODO: download mock data here
		} else {
			startPolling();
		}
	}

	@IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
		backButtonPressedHandler?();
		stopPolling();
		navigationController!.popViewController(animated: true);
	}

	@IBAction func closeInquiryButtonPressed(_ sender: UIBarButtonItem) {
        Alert.show(self, title: "Предупреждение", msg: "Вы действительно желаете закрыть запрос?",
            okPressedHandler: {
                ProgressHud.start(in: self.view);
                let model = InquiryCloseRequest(inquiryId: self.inquiryId);
                ApiInquiry.close(
                    model: model,
                    success: { resp in
                        self.inquiry!.isClosed = true;
                        self.closeInquiryButton.isEnabled = false;
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
            },
            cancelPressedHandler: {
                // empty
            }
        );
	}

	func updateTableView() {
        stopPolling();
        if (needToShowProgressHud) {
            ProgressHud.start(in: view);
        }
		let model = InquiryGetRequest(inquiryId: inquiryId);
		ApiInquiry.get(
			model: model,
			success: { resp in
                if self.isPollingEnabled {
                    self.inquiry = resp.inquiry;
                    if (self.inquiry !== nil && self.tableView.isHidden) {
                        self.tableView.isHidden = (self.inquiry!.offers.count == 0);
                        self.noOffersLabel.isHidden = (self.inquiry!.offers.count > 0);
                    }
                    self.descriptionLabel.text = "                    " + self.inquiry!.text;
                    self.categoryNameLabel.text = "                    " + self.inquiry!.categoryName;
                    if self.inquiry!.isClosed {
                        self.closeInquiryButton.isEnabled = false;
                    }
                    self.tableView.reloadData();
                    self.timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.updateTableView), userInfo: nil, repeats: false);
                }
			},
			error: { resp in
                if self.isPollingEnabled {
                    Alert.show(self, title: "Ошибка", msg: resp.message, okPressedHandler: {
                        _ = self.navigationController?.popViewController(animated: true);
                    });
                }
            },
            always: {
                if (self.needToShowProgressHud) {
                    self.needToShowProgressHud = false;
                    ProgressHud.stop();
                }
            }
		);
	}

	func startPolling() {
        isPollingEnabled = true;
		updateTableView();
	}

	func stopPolling() {
		timer?.invalidate();
		timer = nil;
	}
    
    func switchToOfferDetailsVC(offer: OfferDto) {
        prepareToSwitch();
        ProgressHud.start(in: view);
        ApiUser.get(
            model: UserGetRequest(userId: offer.retailerId),
            success: { resp in
                let tbc = self.storyboard!.instantiateViewController(withIdentifier: StrId.CustomerOfferTabBarControllerId.rawValue) as! UITabBarController;
                UserData.customerOfferTabBarVC = tbc;
                for viewController in tbc.viewControllers! {
                    if let vc = viewController.contentViewController as? OfferInfoForCustomerVC {
                        vc.offer = offer;
                        vc.retailer = resp.user;
                        vc.backButtonPressedHandler = self.startPolling;
                    }
                    else if let vc = viewController.contentViewController as? ChatForCustomerVC {
                        vc.inquiry = self.inquiry;
                        vc.offer = offer;
                        vc.retailer = resp.user;
                        vc.backButtonPressedHandler = self.startPolling;
                    }
                }
                AppDelegate.shared.switchRootViewController(rootViewController: tbc, options: .transitionFlipFromRight);
            },
            error: { resp in
                Alert.show(self, title: "Ошибка", msg: resp.message, okPressedHandler: {
                    self.startPolling();
                });
            },
            always:  {
                ProgressHud.stop();
            }
        );
    }
    
    func prepareToSwitch() {
        stopPolling();
        needToShowProgressHud = true;
        isPollingEnabled = false;
    }

	// MARK: - UITableViewDataSource, UITableViewDelegate

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return inquiry == nil ? 0 : inquiry!.offers.count;
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: StrId.OfferCellId.rawValue) as! OfferCell;
        cell.setup(inquiry!.offers[indexPath.row]);
		return cell;
	}
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switchToOfferDetailsVC(offer: inquiry!.offers[indexPath.row]);
    }

}
