//
//  DetailViewController.swift
//  Hacktoberfest iOS
//
//  Created by Swamita on 05/10/20.
//

import UIKit

class DetailViewController: UIViewController {
    
    var framework = ""
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = framework
        //TODO initial setup
    }
    
}
