//
//  ViewController.swift
//  ContactList
//
//  Created by Masaie on 23/3/22.
//

import UIKit

class DetailPageViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = contact.fullname
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.eMail)@mail.ru"
    }
}

