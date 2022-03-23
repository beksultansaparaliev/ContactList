//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Masaie on 23/3/22.
//

import UIKit

class TabBarViewController: UITabBarController {

    let contacts = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Реализовать передачу данных
    }
}
