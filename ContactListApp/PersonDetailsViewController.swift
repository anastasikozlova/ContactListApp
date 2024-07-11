//
//  PersonDetailsViewController.swift
//  ContactListApp
//
//  Created by Анастасия Козлова on 09.07.2024.
//

import UIKit

final class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var fullNameNavigationItem: UINavigationItem!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameNavigationItem.title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }

}
