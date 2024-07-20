//
//  InquiriesFilterVC.swift
//  AMarket
//
//  Created by Artem on 2/27/17.
//  Copyright © 2017 OrgName. All rights reserved.
//

import UIKit

class InquiriesFilterVC: UIViewController {
    
    var backButtonPressedHandler: (() -> Void)?;
    
    @IBOutlet weak var requestHasOffersFromSegControl: UISegmentedControl!;
    @IBOutlet weak var requestHasNoOffersFromSegControl: UISegmentedControl!;
    @IBOutlet weak var requestIsClosedSegControl: UISegmentedControl!;
    @IBOutlet weak var requestHasOffersFromSwitch: UISwitch!;
    @IBOutlet weak var requestHasNoOffersFromSwitch: UISwitch!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        initUIControls();
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        Configs.shared.inquiriesFilter.save();
        backButtonPressedHandler?();
        dismiss(animated: true);
    }
    
    @IBAction func requestHasOffersFromSwitchValueChanged(_ sender: UISwitch) {
        if (sender.isOn) {
            requestHasOffersFromSegControl.isEnabled = true;
            disableOrEnableCombinations();
            selectFirstEnabledSegment(requestHasOffersFromSegControl);
            Configs.shared.inquiriesFilter.hasOffersFrom = InquiriesFilter.Member(requestHasOffersFromSegControl.selectedSegmentIndex);
            disableOrEnableCombinations();
        } else {
            disableSegControl(requestHasOffersFromSegControl);
            Configs.shared.inquiriesFilter.hasOffersFrom = nil;
            disableOrEnableCombinations();
        }
    }
    
    @IBAction func requestHasNoOffersFromSwitchValueChanged(_ sender: UISwitch) {
        if (sender.isOn) {
            requestHasNoOffersFromSegControl.isEnabled = true;
            disableOrEnableCombinations();
            selectFirstEnabledSegment(requestHasNoOffersFromSegControl);
            Configs.shared.inquiriesFilter.hasNoOffersFrom = InquiriesFilter.Member(requestHasNoOffersFromSegControl.selectedSegmentIndex);
            disableOrEnableCombinations();
        } else {
            disableSegControl(requestHasNoOffersFromSegControl);
            Configs.shared.inquiriesFilter.hasNoOffersFrom = nil;
            disableOrEnableCombinations();
        }
    }
    
    @IBAction func requestHasOffersFromSegControlValueChanged(_ sender: UISegmentedControl) {
        Configs.shared.inquiriesFilter.hasOffersFrom = InquiriesFilter.Member(sender.selectedSegmentIndex);
        disableOrEnableCombinations();
    }
    
    @IBAction func requestHasNoOffersFromSegControlValueChanged(_ sender: UISegmentedControl) {
        Configs.shared.inquiriesFilter.hasNoOffersFrom = InquiriesFilter.Member(sender.selectedSegmentIndex);
        disableOrEnableCombinations();
    }
    
    @IBAction func requestIsClosedSegControlValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 2 {
            Configs.shared.inquiriesFilter.isClosed = nil;
        } else {
            Configs.shared.inquiriesFilter.isClosed = (sender.selectedSegmentIndex == 0);
        }
    }
    
    private func selectFirstEnabledSegment(_ control: UISegmentedControl) {
        for i in 0 ..< control.numberOfSegments  {
            if control.isEnabledForSegment(at: i) {
                control.selectedSegmentIndex = i;
                break;
            }
        }
    }
    
    private func disableOrEnableCombinations() {
        var disabledHasOffersFrom = 0;
        for i in 0..<3 {
            let isEnabled = InquiriesFilter.isAllowed(hasOffersFrom: Configs.shared.inquiriesFilter.hasOffersFrom, hasNoOffersFrom: InquiriesFilter.Member(i));
            if !isEnabled {
                disabledHasOffersFrom += 1;
            }
            requestHasNoOffersFromSegControl.setEnabled(isEnabled, forSegmentAt: i);
        }
        var disabledHasNoOffersFrom = 0;
        for i in 0..<3 {
            let isEnabled = InquiriesFilter.isAllowed(hasOffersFrom: InquiriesFilter.Member(i), hasNoOffersFrom: Configs.shared.inquiriesFilter.hasNoOffersFrom);
            if !isEnabled {
                disabledHasNoOffersFrom += 1;
            }
            requestHasOffersFromSegControl.setEnabled(isEnabled, forSegmentAt: i);
        }
        if (disabledHasOffersFrom == 3) {
            requestHasNoOffersFromSwitch.isEnabled = false;
            disableSegControl(requestHasNoOffersFromSegControl);
        } else {
            requestHasNoOffersFromSwitch.isEnabled = true;
        }
        if (disabledHasNoOffersFrom == 3) {
            requestHasOffersFromSwitch.isEnabled = false;
            disableSegControl(requestHasOffersFromSegControl);
        } else {
            requestHasOffersFromSwitch.isEnabled = true;
        }
    }
    
    private func disableSegControl(_ control: UISegmentedControl) {
        control.isEnabled = false;
        control.selectedSegmentIndex = -1;
    }
    
    private func initUIControls() {
        if let hasOffersFrom = Configs.shared.inquiriesFilter.hasOffersFrom {
            requestHasOffersFromSegControl.selectedSegmentIndex = hasOffersFrom.index;
        } else {
            requestHasOffersFromSwitch.isOn = false;
            disableSegControl(requestHasOffersFromSegControl);
        }
        if let hasNoOffersFrom = Configs.shared.inquiriesFilter.hasNoOffersFrom {
            requestHasNoOffersFromSegControl.selectedSegmentIndex = hasNoOffersFrom.index;
        } else {
            requestHasNoOffersFromSwitch.isOn = false;
            disableSegControl(requestHasNoOffersFromSegControl);
        }
        if let isClosed = Configs.shared.inquiriesFilter.isClosed {
            requestIsClosedSegControl.selectedSegmentIndex = isClosed ? 0 : 1;
        } else {
            requestIsClosedSegControl.selectedSegmentIndex = 2;
        }
        disableOrEnableCombinations();
    }
    
}
