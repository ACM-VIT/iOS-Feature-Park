//
//  ContributorTableViewController.swift
//  Hacktoberfest iOS
//
//  Created by Swamita on 05/10/20.
//

import UIKit

class FrameworkTableViewController: UITableViewController {
    
    var cellIdentifier = "frameworkCell"
    var segueIdentifier = "frameworkToDetail"

    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO initial setup
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datasource.frameworks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        let framework = Datasource.frameworks[indexPath.row]
        cell.textLabel?.text = framework.name
        return cell
    }
    
    //MARK: - Table view Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    

}
