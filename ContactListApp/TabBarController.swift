//
//  TabBarController.swift
//  ContactListApp
//
//  Created by Анастасия Козлова on 13.07.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private let personsList = generateUniquePersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = self.viewControllers else { return }
        
        if let firstNavigationVC = viewControllers[0] as? UINavigationController {
            if let personsListVC = firstNavigationVC.topViewController as? PersonsListViewController {
                personsListVC.persons = personsList
            }
        }
        
        if let secondNavigationVC = viewControllers[1] as? UINavigationController {
            if let secondPersonsListVC = secondNavigationVC.topViewController as? SecondPersonsListViewController {
                secondPersonsListVC.persons = personsList
            }
        }
       
    }

}
