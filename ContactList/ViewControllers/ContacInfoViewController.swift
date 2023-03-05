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
    
    var detail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = detail.number
        mailLabel.text = detail.email
    }
}
