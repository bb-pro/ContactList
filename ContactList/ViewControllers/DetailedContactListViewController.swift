//
//  DetailedContactListViewController.swift
//  ContactList
//
//  Created by Bektemur Mamashayev on 02/03/23.
//

import UIKit

class DetailedContactListViewController: UITableViewController {
    private let contacts = Person.getContacts()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Table view data source
extension DetailedContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedContact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contacts[indexPath.row].number
            content.image = UIImage(named: "phone")
        } else {
            content.text = contacts[indexPath.row].email
            content.image = UIImage(named: "mail")
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
}
extension DetailedContactListViewController {
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let header = contacts[section].contact
        return header
    }
}
