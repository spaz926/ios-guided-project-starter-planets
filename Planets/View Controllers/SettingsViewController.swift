//
//  SettingsViewController.swift
//  Planets
//
//  Created by Jeffrey Carpenter on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

extension String {
    static let shouldShowPlutoKey = "shouldShowPlutoKey"
}

class SettingsViewController: UIViewController {

    @IBOutlet weak var plutoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateViews()
    }
    
    @IBAction func plutoSwitchValueChanged(_ sender: UISwitch) {
        
        // TODO: update the saved data using UserDefaults
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
    
    private func updateViews() {
        
        // TODO: update the switch based on saved data
        plutoSwitch.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
