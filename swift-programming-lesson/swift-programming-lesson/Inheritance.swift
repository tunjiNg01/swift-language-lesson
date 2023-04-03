//
//  Inheritance.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 28/03/2023.
//

import Foundation


// Inheritance

//Define base class

class Speedometer {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

// Subclassing
class SomeSubclass: Speedometer {
    //
}

var current = SomeSubclass()


//Overriding

//Accessing Superclass Methods, Properties, and Subscripts.

// Overriding Properties

// Overriding Property Getters and Setters


// Overriding property observer


// Preventing overriding




