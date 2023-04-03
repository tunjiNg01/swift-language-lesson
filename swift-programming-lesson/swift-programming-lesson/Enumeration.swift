//
//  Enumeration.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 23/03/2023.
//

import Foundation


// Enumeration: Modeling a custom types
//--- Can conform to protocol
//--- Can hane properties, methods, initialization
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

// for car in Cars.allCases {
    // print(car)
// }

// Recursive enumeration
