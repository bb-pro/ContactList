//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Bektemur Mamashayev on 03/03/23.
//

import UIKit

class TabBarViewController: UITabBarController {
    let contacts = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let contactListVC = segue.destination as? ContactListViewController {
            contactListVC.contacts = contacts
        } else if let detailedVC = segue.destination as? DetailedContactListViewController {
            detailedVC.contacts = contacts
        }
    }
}
