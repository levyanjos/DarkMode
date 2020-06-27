//
//  ViewController.swift
//  DarkMode
//
//  Created by Levy Cristian on 26/06/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var backgorundView: UIView!
    
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        helloLabel.setColor(\.textColor, to: UIColor.textColor)
        backgorundView.setColor(\.backgroundColor, to: UIColor.backgroundColor)

        
    }

    @IBAction func toggleStyle(_ sender: UISwitch) {
        if sender.isOn {
            AppColor.interfaceStyle = .dark
        } else {
            AppColor.interfaceStyle = .light
        }
    }
    
}

