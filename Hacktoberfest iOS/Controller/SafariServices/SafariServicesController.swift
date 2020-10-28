//
//  SafariServicesController.swift
//  Hacktoberfest iOS
//
//  Created by Francesco Deliro on 25/10/2020.
//

import UIKit
import SafariServices

final class SafariServicesController: UIViewController {
    
    var videoLink: String = "https://github.com/ACM-VIT/iOS-Feature-Park"

    @IBAction func openVideo(_ sender: UIButton) {
        showSafariViewController(link: videoLink)
    }
    
    private func showSafariViewController(link: String) {
        guard let url = URL(string: link) else {
            return
        }
        
        let safariController = SFSafariViewController(url: url)
        safariController.delegate = self
        safariController.preferredBarTintColor = .darkBlue
        safariController.preferredControlTintColor = .brightPink
        safariController.modalPresentationStyle = .overFullScreen
        present(safariController, animated: true)
    }

}
