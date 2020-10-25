//
//  DetailViewController.swift
//  Hacktoberfest iOS
//
//  Created by Swamita on 05/10/20.
//

import UIKit

final class DetailViewController: UIViewController {
    
    var framework: FrameworkModel?
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = framework?.name
        //TODO initial setup
    }
    
}
