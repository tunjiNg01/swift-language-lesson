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
/***

// Generally closure syntax

// { (<parameter>) -> Int in <Statement> }
// start from the full definition and reduce streamline it down
let animals = [2,4,6,1,9,0]
let sortedAnimal = animals.sorted(by: { $0 > $1} )
print(sortedAnimal)


// Trailing closure

let xh = animals.sorted { $0 > $1}

func trailingFunction(name: String, process: () -> Void ) {
    
}

trailingFunction(name: "Doe") {
    print("Hello world: \(name)")
}

let squareArray = animals.map {
    num in num * num
}

print(squareArray.sorted())


//value capturing
func stringConcatenator(s1 : String) -> () -> String {
    var fullText = ""
    
    func textGenerator() -> String {
       fullText = fullText + " " + s1
        return fullText
    }
    return textGenerator
}

let stringCon = stringConcatenator(s1: "Thomas")

print(stringCon())
print(stringCon())
print(stringCon())
print(stringCon())

// closure are reference type

let stringCon2 = stringCon
print(stringCon2() + " " + "copy")

// Escaping closure:
var handler: [() -> Void] = []


func escapingClosureFunc(completionHandler: @escaping () -> Void) {
    
    handler.append(completionHandler)
    return
}


// autoclosure
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)

func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}
print(customersInLine.count)
serve(customer: { customersInLine.remove(at: 0) } )

func serve1(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve1(customer: customersInLine.remove(at: 0))

print(customersInLine.count)
 */
