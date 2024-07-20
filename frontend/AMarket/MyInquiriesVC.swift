//
//  MyInquiriesVC.swift
//  AMarket
//
//  Created by MacUser on 9/2/16.
//  Copyright © 2016 OrgName. All rights reserved.
//

import UIKit

class MyInquiriesVC: UIViewController, MainMenuProtocol, UITableViewDataSource, UITableViewDelegate {

	private var timer: Timer?;
	private var inquiries = [CustomerInquiryDto]();
    private var needToShowProgressHud = true;
    private var isPollingEnabled = true;
    
	@IBOutlet weak var tableView: UITableView!;
    @IBOutlet weak var noInquiriesLabel: UILabel!;
    
	override func viewDidLoad() {
		super.viewDidLoad();
		UserData.customerRootNavigationVC = parent as? UINavigationController;
		tableView.dataSource = self;
		tableView.delegate = self;
        tableView.refreshControl = UIRefreshControl();
        tableView.refreshControl!.attributedTitle = NSAttributedString(string: "Загрузить предыдущие");
        tableView.refreshControl!.addTarget(self, action: #selector(pullToRefreshCallback), for: .valueChanged);
		if (Configs.shared.env == Environment.DebugOffline) {
			// TODO: download mock data here
		} else {
			startPolling();
		}
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        prepareToSwitch();
		if let vc = segue.destination as? NewInquiryVC {
			vc.inquiryCreatedHandler = startPolling;
			vc.cancelledHandler = startPolling;
		}
		else if let vc = segue.destination as? InquiryDetailsVC {
			let selectedInquiry = inquiries[(tableView.indexPathForSelectedRow! as NSIndexPath).row];
			vc.inquiryId = selectedInquiry.id;
			vc.inquiryNameShortenedTo15Chars = selectedInquiry.nameShortenedTo15Chars;
			vc.backButtonPressedHandler = startPolling;
		}
        else if let vc = segue.destination as? MyProfileVC {
            vc.backButtonPressedHandler = startPolling;
        }
	}

    @IBAction func showMainMenuButtonPressed(_ sender: UIBarButtonItem) {
        prepareToSwitch();
        showMainMenu(vc: self, myProfileSegueId: StrId.MyInquiriesToMyProfileSegueId.rawValue, cancelledHandler: startPolling);
    }
    
	@IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
		performSegue(withIdentifier: StrId.MyInquiriesToNewInquirySegueId.rawValue, sender: self);
	}

	func updateTableView() {
		stopPolling();
        if (needToShowProgressHud) {
            ProgressHud.start(in: view);
        }
        var model: CustomerInquiryListRequest;
        if (inquiries.count == 0) {
            model = CustomerInquiryListRequest(createdBefore: Date());
        } else {
            let inquiriesIdxs = inquiries.map({ $0.id });
            let inquiryWithMaxUpdatedDate = inquiries.max(by: { i1, i2 in
                if let upd1 = i1.updated, let upd2 = i2.updated {
                    return upd1 < upd2;
                }
                return false;
            })!;
            var updatedAfter = Date().addingTimeInterval(-TimeInterval(3600)/*-1h*/);
            if let inquiryUpdatedDate = inquiryWithMaxUpdatedDate.updated {
                updatedAfter = inquiryUpdatedDate;
            }
            model = CustomerInquiryListRequest(inquiriesIdxs: inquiriesIdxs, createdBefore: inquiries.last!.created, createdAfter: inquiries.first!.created, updatedAfter: updatedAfter);
        }
		ApiInquiry.listForCustomer(
			model: model,
			success: { resp in
                if self.isPollingEnabled {
                    if (resp.created.count > 0 || resp.updated.count > 0) {
                        let isScrollNeeded = (self.inquiries.count == 0 && resp.created.count > 0);
                        self.inquiries.append(contentsOf: resp.created);
                        for item in resp.updated {
                            let found = self.inquiries.first { $0.id == item.id }!;
                            found.update(by: item);
                        }
                        self.inquiries.sort { $0.created < $1.created };
                        if (self.tableView.isHidden) {
                            self.tableView.isHidden = (self.inquiries.count == 0);
                            self.noInquiriesLabel.isHidden = (self.inquiries.count > 0);
                        }
                        self.tableView.reloadData();
                        if (isScrollNeeded) {
                            self.tableView.scrollToRow(at: IndexPath(row: self.inquiries.count - 1, section: 0), at: UITableViewScrollPosition.bottom, animated: true);
                        }
                    }
                    self.timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.updateTableView), userInfo: nil, repeats: false);
                }
			},
			error: { resp in
                if self.isPollingEnabled {
                    Alert.show(self, title: "Ошибка", msg: resp.message, okPressedHandler: {
                        self.timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.updateTableView), userInfo: nil, repeats: false);
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
    
    func prepareToSwitch() {
        stopPolling();
        needToShowProgressHud = true;
        isPollingEnabled = false;
    }
    
    func pullToRefreshCallback() {
        ApiInquiry.listForCustomer(
            model: CustomerInquiryListRequest(createdBefore: inquiries[0].created),
            success: { resp in
                if (resp.created.count > 0) {
                    self.inquiries.append(contentsOf: resp.created);
                    self.inquiries.sort { $0.created < $1.created };
                    self.tableView.reloadData();
                }
            },
            error: { resp in
                Alert.show(self, title: "Ошибка", msg: resp.message);
            },
            always: {
                self.tableView.refreshControl!.endRefreshing();
            }
        );
    }

	// MARK: - UITableViewDataSource, UITableViewDelegate -

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return inquiries.count;
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: StrId.CustomerInquiryCellId.rawValue) as! CustomerInquiryCell;
        cell.setup(inquiries[indexPath.row]);
		return cell;
	}

	func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
		return UITableViewAutomaticDimension;
	}
	
}
