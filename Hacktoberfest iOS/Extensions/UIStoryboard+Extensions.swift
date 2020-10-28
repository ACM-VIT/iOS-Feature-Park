//
//  UIStoryboard+Extensions.swift
//  Hacktoberfest iOS
//
//  Created by Francesco Deliro on 25/10/2020.
//

import UIKit

extension UIStoryboard {
    static let main = UIStoryboard(name: "Main", bundle: nil)
    static let safariServices = UIStoryboard(name: "SafariServices", bundle: nil)
}

extension UIStoryboard {
    
    func instantiate<T>() -> T {
        return instantiateViewController(withIdentifier: String(describing: T.self)) as! T
    }
    
    func instantiateInitial<T>() -> T {
        return instantiateInitialViewController() as! T
    }

}
