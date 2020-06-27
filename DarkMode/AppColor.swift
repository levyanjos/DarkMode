//
//  AppColor.swift
//  DarkMode
//
//  Created by Levy Cristian on 26/06/20.
//

import UIKit

struct AppColor {
    
    public typealias BindingClosure = (() -> Void)?
    private var subscribes : [BindingClosure]
    
    public static var standart = AppColor(subscribes: [])
    
    static var interfaceStyle: UserInterfaceStyle {
        get {
            let value = UserDefaults.standard.integer(forKey: "interfaceStyle")
            guard let style = UserInterfaceStyle(rawValue: value) else { return .light}
            return style
        }
        set(newValue) {
            UserDefaults.standard.set(newValue.rawValue, forKey: "interfaceStyle")
            self.standart.publishStyleChange()
        }
    }
    
    public mutating func subscribreforStyleChange(closure: BindingClosure) {
        self.subscribes.append(closure)
    }
    
    private func publishStyleChange() {
        subscribes.forEach { (binding) in
            binding?()
        }
    }
    
    internal enum UserInterfaceStyle: Int {
        case light = 0
        case dark = 1
    }
    
    //MARK: - Colors
    fileprivate static let backgoundColor = UIAdaptiveColor(lightColor: UIColor(red:0.93, green:0.95, blue:0.96, alpha:1.0),
                                                            darkColor: UIColor(red:0.0, green:0.0, blue:0.01, alpha:1.0))
    fileprivate static let textColor = UIAdaptiveColor(lightColor: UIColor.red,
                                                       darkColor: UIColor.white)
 
}

extension UIColor {
    static var backgroundColor: UIAdaptiveColor {
        return AppColor.backgoundColor
    }
    static var textColor: UIAdaptiveColor {
        return AppColor.textColor
    }
}

extension NSObject: BuilderChain {}

protocol BuilderChain {}

extension BuilderChain where Self: AnyObject {
    @discardableResult
    func setColor(_ property: ReferenceWritableKeyPath<Self, UIColor?>, to value: UIAdaptiveColor?) -> Self {
        AppColor.standart.subscribreforStyleChange { [weak self] in
            self?[keyPath: property] = value?.currentInterfaceColor()
        }
        self[keyPath: property] = value?.currentInterfaceColor()
        return self
    }
}
