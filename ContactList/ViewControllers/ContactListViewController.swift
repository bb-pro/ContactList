//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Bektemur Mamashayev on 02/03/23.
//

import UIKit

class ContactListViewController: UITableViewController {
    private let contacts = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Person.getContacts().count)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? ContacInfoViewController else {
            return
        }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = contacts[indexPath.row]
        infoVC.navigationItem.title = person.contact
        infoVC.phone = person.number
        infoVC.email = person.email
    }
}

// MARK: - TableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = contacts[indexPath.row].contact
        cell.contentConfiguration = content
        
        return cell
    }
}
