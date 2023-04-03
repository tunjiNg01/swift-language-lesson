//
//  Closure.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 21/03/2023.
//

import Foundation


// Closure: These are just the shorthand approach of writing an expression
// Properties: Trailing closure
//---- Infering parameter and return type from the context
//---- Implicit from single expression.
//---- Shorthand Argument name.

// Closure expression:

// { (expression:String ) -> Bool in return false }

// Inferring From Context: The parameter and return type can be infer from the context

// Implicit return


// Capturing value:

func addition(by number: Int) -> () -> Int {
    var x = 0
    func performAddition() -> Int {
        x += number
        return x
    }
    
    return performAddition
}


var addedTen = addition(by: 10)
// addedTen()


// Closure is an inference type

// Escaping closure: A closure is said to escape a function when the closur e is passed as an argument to the function,
//--                 but is called after the function returns.


// AutoClosure: 
