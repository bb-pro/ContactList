//
//  ContacInfoViewController.swift
//  ContactList
//
//  Created by Bektemur Mamashayev on 02/03/23.
//

import UIKit

class ContacInfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    var phone: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = phone
        mailLabel.text = email
    }
}
