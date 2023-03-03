//
//  Person.swift
//  ContactList
//
//  Created by Bektemur Mamashayev on 02/03/23.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let number: String
    
    var contact: String {
        name + " " + surname
    }
    
    static func getContacts() -> [Person] {
        let dataStore = DataStore()
        var contacList: [Person] = []
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let numbers = dataStore.numbers.shuffled()
        
        for (index, _) in names.enumerated() {
            contacList.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    email: emails[index],
                    number: numbers[index])
            )
        }
        return contacList
    }
}
