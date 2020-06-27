//
//  SecondViewController.swift
//  DarkMode
//
//  Created by Levy Cristian on 27/06/20.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var middleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        middleView.setColor(\.backgroundColor, to: UIColor.textColor)
        view.setColor(\.backgroundColor, to: UIColor.backgroundColor)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
