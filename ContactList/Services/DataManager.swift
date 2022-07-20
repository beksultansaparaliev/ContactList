//
//  DataManager.swift
//  ContactList
//
//  Created by Masaie on 23/3/22.
//

import Foundation

// Singeton класс
class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "Quanah",
        "Hezekiah",
        "Urbain",
        "Urban",
        "Otis",
        "Rafael",
        "Lawson",
        "Samir",
        "Xandros",
        "Gerald"
    ]
    
    let surnames = [
        "Morris",
        "Martin",
        "Bryant",
        "Morgan",
        "Powell",
        "Cox",
        "Jones",
        "Martinez",
        "Cox",
        "Cooper"
    ]
    
    let eMails = [
        "Kelly",
        "Wilson",
        "Price",
        "Gonzales",
        "Gonzales",
        "Green",
        "Lee",
        "Henderson",
        "Jenkins",
        "Young"
    ]
    
    let phoneNumbers = [
        "808-555-0157",
        "808-555-0170",
        "808-555-0195",
        "808-555-0134",
        "808-555-0159",
        "518-555-0159",
        "518-555-0156",
        "518-555-0172",
        "518-555-0180",
        "518-555-0182"
    ]
    
    private init() {}
}
