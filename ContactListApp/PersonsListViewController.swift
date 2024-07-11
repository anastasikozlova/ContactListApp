//
//  ViewController.swift
//  ContactListApp
//
//  Created by Анастасия Козлова on 09.07.2024.
//

import UIKit

final class PersonsListViewController: UITableViewController {
    
    private let personsList = generateUniquePersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = "Back"
    }
    
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personDetailsVC = segue.destination as? PersonDetailsViewController
        personDetailsVC?.person = personsList[indexPath.row]
    }

}

// MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullNameCell", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}
