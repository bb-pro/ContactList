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
        var contacts: [Person] = []
        for (name, surname) in zip(dataStore.names, dataStore.surnames).shuffled() {
            contacts.append(
                Person(contact: "\(name) \(surname)",
                       email: dataStore.emails.randomElement()!,
                       number: dataStore.numbers.randomElement()!))
        }
        return contacts
    }
}
