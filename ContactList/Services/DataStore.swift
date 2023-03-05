//
//  DataStore.swift
//  ContactList
//
//  Created by Bektemur Mamashayev on 02/03/23.
//


final class DataStore {
    
    static let shared = DataStore()
    
    var names =
    [
        "John",
        "Sharon",
        "Aaron",
        "Steve",
        "Nicola",
        "Tim",
        "Ted",
        "Bruce",
        "Carl",
        "Allan"
    ]
    
    let surnames = [
        "Murphy",
        "Jankin",
        "Rose",
        "Miller",
        "Williams",
        "Black",
        "Robertson",
        "Butler",
        "Isaacson",
        "Smith"
    ]
    
    let emails = [
        "a@gmail.com",
        "b@gmail.com",
        "c@gmail.com",
        "d@gmail.com",
        "e@gmail.com",
        "f@gmail.com",
        "g@gmail.com",
        "h@gmail.com",
        "i@gmail.com",
        "j@gmail.com"
    ]
    
    let numbers = [
        "+49-89-545-48018",
        "+49-89-636-48018",
        "+49-89-123-48018",
        "+49-89-000-48018",
        "+49-89-111-48018",
        "+49-89-222-48018",
        "+49-89-777-48018",
        "+49-89-909-48018",
        "+49-89-699-48018",
        "+49-89-436-48018",
    ]
    //Синглтон
    private init() {}

}

//Singleton
class PersonManager {
    
    static let shared = PersonManager()
    
    private init() {}
    
    let dataStore = DataStore.shared
    
    func add(name: String) {
        if !dataStore.names.contains(name) {
            dataStore.names.append(name)
            print("Name \(name) is added \n")
        }
    }
    
    func getNames() {
        dataStore.names.forEach { name in
            print(name)
        }
    }
}


