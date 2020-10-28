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
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = framework?.name
        
        addFrameworkChildViewController()
    }

}

private extension DetailViewController {
    
    func addFrameworkChildViewController() {
        switch framework {
        case .safariServices:
            add(child: UIStoryboard.safariServices.instantiateInitial())
        default:
            break
        }
    }
    
    func add(child: UIViewController) {
        add(child: child, containerView: containerView)
    }
}
