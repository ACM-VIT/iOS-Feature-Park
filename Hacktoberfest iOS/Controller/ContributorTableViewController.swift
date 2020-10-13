//
//  TableViewController.swift
//  Hacktoberfest iOS
//
//  Created by Aaryan Kothari on 05/10/20.
//

import UIKit
import SafariServices
import MessageUI

class ContributorCell: UITableViewCell{
    @IBOutlet weak var nameLabel: UILabel!
    
}

class ContributorTableViewController: UITableViewController {
    
    var cellIdentifier = "contributorCell"
    
    var searchController : UISearchController!
    
    var filteredContributors : [ContributorModel] = []
    
    var isSeachBarEmpty : Bool {
        return self.searchController.searchBar.text?.isEmpty ?? true
    }
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.setupSearchController()
        
        filteredContributors = Datasource.contributors
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor (named: "darkBlue")
        appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor (named: "brightPink")!]
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
        navigationItem.searchController = searchController
    }
    
    private func setupSearchController() {
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.searchBar.barStyle = .black
        searchController.searchBar.autocapitalizationType = .none
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Contributors"
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredContributors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ContributorCell
        
        cell.nameLabel?.text = filteredContributors[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, contextMenuConfigurationForRowAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        return UIContextMenuConfiguration(identifier: nil, previewProvider: nil, actionProvider: { suggestedActions in
            return self.makeContextMenu(for: indexPath.row)
        })
    }
    
    //MARK: - table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func makeContextMenu(for index:Int) -> UIMenu {
        var actions = [UIAction]()
        let contributor = filteredContributors[index]
        for item in contributor.socialHandles {
            let action = UIAction(title: item.imageName, image: UIImage(named: item.imageName), identifier: nil, discoverabilityTitle: nil) { _ in
                if case .mail = item {
                    self.openMailComposer(with: item.urlString)
                } else {
                    self.openWebsite(item.urlString)
                }
            }
            actions.append(action)
        }
        let cancel = UIAction(title: "Cancel", attributes: .destructive) { _ in}
        actions.append(cancel)
        return UIMenu(title: "", children: actions)
    }
}

extension ContributorTableViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    private func openMailComposer(with mail: String?) {
        guard MFMailComposeViewController.canSendMail(), let mail = mail, !mail.isEmpty else { return }
        let composeVC = MFMailComposeViewController()
        composeVC.setToRecipients([mail])
        composeVC.mailComposeDelegate = self
        present(composeVC, animated: true)
    }
}

//MARK: - SFSafarieViewControllerDelegate Extension
extension UIViewController : SFSafariViewControllerDelegate{
    func openWebsite(_ link : String?){
        if let link = link,let url = URL(string: link) {
            if ["http", "https"].contains(url.scheme?.lowercased() ?? "") {
                let safariVC = SFSafariViewController(url: url)
                self.present(safariVC, animated: true, completion: nil)
                safariVC.delegate = self
            }
        }
    }
    
}

//MARK: - UISearchResultsUpdating Extension
extension ContributorTableViewController : UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        
        filteredContributors = []
    
        if let searchInput: String = searchController.searchBar.text?.lowercased(), !isSeachBarEmpty {
        
            filteredContributors = Datasource.contributors.filter({ (contributor) -> Bool in
                if (contributor.name.lowercased().contains(searchInput.lowercased())) {
                    return true
                } else {
                    return false
                }
            })
            
        } else {
            filteredContributors = Datasource.contributors
        }
        self.tableView .reloadData()
    }
}
