//
//  Person.swift
//  ContactList
//
//  Created by Bektemur Mamashayev on 02/03/23.
//

let dataStore = DataStore()
struct Person {
    var contact: String
    var email: String
    var number: String
    
    static func getContacts() -> [Person] {
        var contacList: [Person] = []
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let numbers = dataStore.numbers.shuffled()
        
        for (i, name) in names.enumerated() {
            contacList.append(
                Person(
                contact: "\(name) \(surnames[i])",
                email: emails[i],
                number: numbers[i]
                )
            )
        }
        return contacList
    }
}
