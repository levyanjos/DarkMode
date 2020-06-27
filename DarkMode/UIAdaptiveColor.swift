//
//  ColorManager.swift
//  DarkMode
//
//  Created by Levy Cristian on 26/06/20.
//

import UIKit

class UIAdaptiveColor {
    
    // MARK: - Variables
    private lazy var lightColor: UIColor = {
        let color = UIColor()
        return color
    }()
    
    private lazy var darkColor: UIColor = {
        let color = UIColor()
        return color
    }()
    
    // MARK: - Functions
    init(lightColor: UIColor, darkColor: UIColor) {
        self.lightColor = lightColor
        self.darkColor = darkColor
    }
    
    func currentInterfaceColor() -> UIColor {
       if #available(iOS 13, *) {
            return UIColor.init { (trait) -> UIColor in
                return trait.userInterfaceStyle == .dark ? self.darkColor : self.lightColor
            }
        } else {
            switch AppColor.interfaceStyle {
            case .light:
                return self.lightColor
            case .dark:
                return self.darkColor
            }
        }
    }
}
