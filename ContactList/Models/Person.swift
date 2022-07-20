//
//  Person.swift
//  ContactList
//
//  Created by Masaie on 23/3/22.
//

struct Person {
    
    let name: String
    let surname: String
    let eMail: String
    let phoneNumber: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContact() -> [Person] {
        
        var contacts: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.eMails.shuffled()
        let phones = DataManager.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            emails.count,
            phones.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                eMail: emails[index],
                phoneNumber: phones[index]
            )
            contacts.append(person)
        }
        
        return contacts
    }
}
