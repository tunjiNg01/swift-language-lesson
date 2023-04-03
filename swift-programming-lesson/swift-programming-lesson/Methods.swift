//
//  Methods.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 26/03/2023.
//

import Foundation


// Methods: are functions that are part an instance which class, struct, or enum.

class Cart {
    var num: Int
    
    init(num: Int) {
        self.num = num
    }
    
    func addItem() -> Int {
        
        return self.num
        
    }
}


// The Self properties: Every instance of a class have an implicit self properties



// Modifying Value Types from Within Instance Methods
// By default properties of value type can't be change from its instance method and enum and struct are value type

// However if we need to change the value of property from its instance method then we need to opt for the mutate behavior.

struct Cart2 {
    var num = 9
    
   mutating func changeNum(){
        self.num = 2
    }
}

// Assigning to self Within a Mutating Method


struct Coordinates {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Coordinates(x: x + deltaX, y: y + deltaY)
    }
}

// Mutating can set implicit self parameter to be a different case.

enum Geocordinate {
    
    case north, east, west, south
    
    mutating func next(){
        switch self {
            
        case .north:
            self = .east
            
        case .east:
            self = .west
            
        case .west:
            self = .south
            
        case .south:
            self = .north
        }
    }
}


// Type Methods: A type method are method that can be called on the type itself

