//
//  Collections Type.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 17/03/2023.
//

import Foundation


enum SomeSpecialType {
    case north
    case west
    case east
    case south
}

// Case Iteration: Iteration over enumeration case case
enum Cars: CaseIterable {
    case toyota
    case camry
}

// Matching enumeration with switch statement.
var cars = Cars.camry

switch cars {
case .toyota:
    print("Toyota")
case .camry:
    print("Camry")
}

// for car in Cars.allCases {
    // print(car)
// }


// associate value


enum Enginne {
    case toyota(Int)
    case camry(String)
}

var enginne = Enginne.camry("C4")

switch enginne {
case .toyota:
    print("Toyota")
case .camry(let type):
    print("\(type)")
}













// Recursive enumeration
