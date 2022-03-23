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
    
    static func getContact() -> [Person] {
        var contacts: [Person] = []
        let data = DataManager()
        
        for _ in 1...data.names.count {
            let person = Person(
                name: data.names.randomElement() ?? "",
                surname: data.surnames.randomElement() ?? "",
                eMail: data.eMails.randomElement() ?? "",
                phoneNumber: data.phoneNumbers.randomElement() ?? ""
            )
            contacts.append(person)
        }
        
        return contacts
    }
}
