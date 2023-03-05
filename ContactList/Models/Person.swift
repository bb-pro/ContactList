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
        var contacList: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let numbers = DataStore.shared.numbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            numbers.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                number: numbers[index])
            contacList.append(person)
        }
        return contacList
    }
}
