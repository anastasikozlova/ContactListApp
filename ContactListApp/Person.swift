//
//  Person.swift
//  ContactListApp
//
//  Created by Анастасия Козлова on 09.07.2024.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

func generateUniquePersons() -> [Person] {
    var persons: [Person] = []
    let dataStore = DataStore()
    
    var usedNames: Set<String> = []
    var usedSurnames: Set<String> = []
    var usedPhones: Set<String> = []
    var usedEmails: Set<String> = []
    
    for _ in 0 ..< dataStore.names.count {
        var name: String
        var surname: String
        var phone: String
        var email: String
        
        repeat {
            name = dataStore.names.randomElement() ?? ""
        } while usedNames.contains(name)
        
        repeat {
            surname = dataStore.surnames.randomElement() ?? ""
        } while usedSurnames.contains(surname)
        
        repeat {
            phone = dataStore.phoneNumbers.randomElement() ?? ""
        } while usedPhones.contains(phone)
        
        repeat {
            email = dataStore.emails.randomElement() ?? ""
        } while usedEmails.contains(email)
        
        usedNames.insert(name)
        usedSurnames.insert(surname)
        usedPhones.insert(phone)
        usedEmails.insert(email)
        
        let person = Person(name: name, surname: surname, phone: phone, email: email)
        persons.append(person)
    }
    return persons
}
