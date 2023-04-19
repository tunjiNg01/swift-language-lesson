//
//  Person.swift
//  stateandbinding
//
//  Created by MACBOOK PRO on 19/04/2023.
//

import Foundation

struct Person: Identifiable{
    
    var id = UUID()
    var name: String
    var phoneNumber: String
    
   
}

struct Department: Identifiable {
    let id = UUID()
    var name: String
    var staff: [Person]
}

struct Company {
    var departments: [Department]
}

var department = Company(departments: [
      Department(name: "Sales", staff: [
      Person(name: "Olatunji Hamee", phoneNumber: "+234 8188659959"),
      Person(name: "Juan Chavez", phoneNumber: "(408) 555-4301"),
      Person(name: "Mei Chen", phoneNumber: "(919) 555-2481"),
      ]),
      Department(name: "Engineering", staff: [
      Person(name: "Olatunji Hamee", phoneNumber: "+234 8188659959"),
      Person(name: "Juan Chavez", phoneNumber: "(408) 555-4301"),
      Person(name: "Mei Chen", phoneNumber: "(919) 555-2481"),
      ])
])


var staff = [
    Person(name: "Juan Chavez", phoneNumber: "(408) 555-4301"),
    Person(name: "Mei Chen", phoneNumber: "(919) 555-2481")
]


