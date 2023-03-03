//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Bektemur Mamashayev on 03/03/23.
//

import UIKit

class TabBarViewController: UITabBarController {
    var contacts = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        get(contacts)
    }
}

private extension TabBarViewController {
    func get(_ contacts: [Person]) {
        viewControllers?.forEach{ viewController in
            if let contactListVC = viewController as? ContactListViewController {
                contactListVC.contacts = contacts
            } else {
                if let detailedInfoVC = viewController as? DetailedContactListViewController {
                    detailedInfoVC.contacts = contacts
                }
            }
        }
    }
}
