//
//  SecondPageViewController.swift
//  ContactList
//
//  Created by Masaie on 23/3/22.
//

import UIKit

class SecondPageViewController: UITableViewController {

//    var contacts: [Person]!
    let contacts = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Tableview DataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let phoneCell = tableView.dequeueReusableCell(withIdentifier: "contactsPhone", for: indexPath)
            
            var content = phoneCell.defaultContentConfiguration()
            content.text = contacts[indexPath.section].phoneNumber
            content.image = UIImage(systemName: "phone")
            
            phoneCell.contentConfiguration = content
            return phoneCell
        } else {
            let emailCell = tableView.dequeueReusableCell(withIdentifier: "contactsEmail", for: indexPath)
            
            var content = emailCell.defaultContentConfiguration()
            content.text = "\(contacts[indexPath.section].eMail)@mail.ru"
            content.image = UIImage(systemName: "tray.fill")
            
            emailCell.contentConfiguration = content
            return emailCell
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullname
    }
}
