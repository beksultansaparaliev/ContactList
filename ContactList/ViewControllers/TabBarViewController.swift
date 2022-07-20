//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Masaie on 23/3/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let firstVC = viewControllers?.first as? FirstPageViewController else { return }
        guard let secondVC = viewControllers?.last as? SecondPageViewController else { return }
        
        let persons = Person.getContact()
        firstVC.contacts = persons
        secondVC.contacts = persons
    }
}
