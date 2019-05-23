//
//  ViewController.swift
//  IDFAViewer
//
//  Created by DongShin Lee on 23/05/2019.
//  Copyright © 2019 sapphire. All rights reserved.
//

import UIKit

import AdSupport

class ViewController: UIViewController {
    @IBOutlet weak var enabledLabel: UILabel!
    @IBOutlet weak var idfaText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let m = ASIdentifierManager.shared();
        enabledLabel.text = m.isAdvertisingTrackingEnabled ? "enabled" : "disabled";
        idfaText.text = m.advertisingIdentifier.uuidString;
    }
}
