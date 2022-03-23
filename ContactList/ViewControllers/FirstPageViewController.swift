//
//  FirstPageViewController.swift
//  ContactList
//
//  Created by Masaie on 23/3/22.
//

import UIKit

class FirstPageViewController: UITableViewController {
    
//    var contacts: [Person]!
    let contacts = Person.getContact()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - TableView DataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "first", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = contacts[indexPath.row].fullname
        cell.contentConfiguration = content
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailPageViewController else { return }
        detailVC.contact = sender as? Person
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = contacts[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: contact)
    }
}
