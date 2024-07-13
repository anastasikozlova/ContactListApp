//
//  SecondPersonsListViewController.swift
//  ContactListApp
//
//  Created by Анастасия Козлова on 11.07.2024.
//

import UIKit

final class SecondPersonsListViewController: UITableViewController {
    
    var persons: [Person]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
    }
}

// MARK: - UITableViewDataSource
extension SecondPersonsListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var sectionTitles: [String] = []
        
        for person in persons {
            sectionTitles.append(person.fullName)
        }
        
        return sectionTitles[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneCell", for: indexPath)
            
            var content = cell.defaultContentConfiguration()
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
            
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath)
            
            var content = cell.defaultContentConfiguration()
            content.text = person.email
            content.image = UIImage(systemName: "tray")
            cell.contentConfiguration = content
            
            return cell
        }
    }
}
