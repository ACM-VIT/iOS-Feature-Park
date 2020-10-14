//
//  ContributorTableViewController.swift
//  Hacktoberfest iOS
//
//  Created by Swamita on 05/10/20.
//

import UIKit

class FrameworkCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
}

class FrameworkTableViewController: UITableViewController {
    
    var cellIdentifier = "frameworkCell"
    var segueIdentifier = "frameworkToDetail"
    var framework = "Framework"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO initial setup
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datasource.frameworks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: cellIdentifier)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! FrameworkCell
        let cellFramework = Datasource.frameworks[indexPath.row]
        cell.titleLabel.text = cellFramework.name
        cell.subtitleLabel.text = cellFramework.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    //MARK: - Table view Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        framework = Datasource.frameworks[indexPath.row].name
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailViewController
        destinationVC.framework = framework
    }
}
