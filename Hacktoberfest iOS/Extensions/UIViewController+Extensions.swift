//
//  UIViewController+Extension.swift
//  Hacktoberfest iOS
//
//  Created by Francesco Deliro on 25/10/2020.
//

import UIKit

extension UIViewController {

    func add(child: UIViewController, containerView: UIView) {
        addChild(child)
        child.view.frame = containerView.frame
        containerView.addSubview(child.view)
        child.didMove(toParent: self)
    }

    func removeChild() {
        self.children.forEach {
            $0.willMove(toParent: nil)
            $0.view.removeFromSuperview()
            $0.removeFromParent()
        }
    }

}
