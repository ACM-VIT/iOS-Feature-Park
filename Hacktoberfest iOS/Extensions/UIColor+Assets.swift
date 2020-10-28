//
//  UIColor+Assets.swift
//  Hacktoberfest iOS
//
//  Created by Francesco Deliro on 25/10/2020.
//

import UIKit

fileprivate extension UIColor {
    
    class func color(named name: String, fallbackColor: UIColor) -> UIColor {
        let color = UIColor(named: name)
        return color ?? fallbackColor
    }
}

extension UIColor {
    
    @nonobjc class var darkBlue: UIColor {
        return UIColor.color(named: "darkBlue", fallbackColor: .white)
    }
    
    @nonobjc class var dullBlue: UIColor {
        return UIColor.color(named: "dullBlue", fallbackColor: .white)
    }
    
    @nonobjc class var brightPink: UIColor {
        return UIColor.color(named: "brightPink", fallbackColor: .black)
    }
    
    @nonobjc class var maroonPink: UIColor {
        return UIColor.color(named: "maroonPink", fallbackColor: .black)
    }
    
}
