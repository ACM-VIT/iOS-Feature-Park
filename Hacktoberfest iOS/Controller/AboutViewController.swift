//
//  AboutViewController.swift
//  Hacktoberfest iOS
//
//  Created by Swamita on 06/10/20.
//

import UIKit
import SafariServices

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func githubTapped(_ sender: Any) {
        openWebsite("https://github.com/ACM-VIT")
    }
    @IBAction func instagramTapped(_ sender: Any) {
        openWebsite("https://www.instagram.com/acmvit/?hl=en")
    }
    @IBAction func twitterTapped(_ sender: Any) {
        openWebsite("https://twitter.com/ACM_VIT")
    }
    @IBAction func linkedinTapped(_ sender: Any) {
        openWebsite("https://www.linkedin.com/company/acm-vit/")
    }
    @IBAction func fbTapped(_ sender: Any) {
        openWebsite("https://www.facebook.com/ACM.VITU")
    }
    
}
