//
//  DetailedContactListViewController.swift
//  ContactList
//
//  Created by Bektemur Mamashayev on 02/03/23.
//

import UIKit

class DetailedContactListViewController: UITableViewController {
    var contacts: [Person]!
}

// MARK: - Table view data source
extension DetailedContactListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedContact", for: indexPath)
        let sectionIndex = indexPath.section
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contacts[sectionIndex].number
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = contacts[sectionIndex].email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].contact
    }
}

//MARK: - UITableViewDelegate
extension DetailedContactListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}



