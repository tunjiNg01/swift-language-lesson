//
//  Basic Operator.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 07/04/2023.
//

import Foundation
//Basic operator

//- In swift programming language there are different operators we can use to implement some logic in our application.

// Let consider some:

// assignment operator
var newName: String = "Olatunji Hammed"



// Arithmetic operator
// operators (+, -, *, /, % and so forth)

// Compound assignment operation

var newAge = 2
// newAge /= 1

// Ternary operator
let pageHeight = 40
let hasHeader = true
let rowHeight = pageHeight + (hasHeader ? 50 : 0)


// Comparison Operator

var productRating = 4
var serviceRating = 6

// Equal

var rating =  productRating == serviceRating ? "equal rating" : "not equal rating"

// Greater than or greater than or equal to
var greaterRating = productRating > serviceRating ? "product rating is: \(productRating)": "service rating is: \(serviceRating)"
// Less than or Less than or equal to
var lesserRating = productRating < serviceRating ? "product rating is: \(productRating)": "service rating is: \(serviceRating)"
// Not equal to
var notEqual = productRating != serviceRating ? "product rating is: \(productRating)": "service rating is: \(serviceRating)"



// Nil-Coalescing Operator
// a ?? b

var someOptionVar: String? = "Nigeria working"

var haveVal = someOptional != nil ? someOptional! : ""

var haveVal2 = someOptional ?? ""

// Range operator

// Closed Range operator
// (1...5)

//for i in 1...5 {
   // print("Current: \(i)")
// }

//Half open operator
// 1..<5

let browsers = ["Microsoft egde", "Google chrome", "Mozilla"]
let arrLength = browsers.count

//for i in 0..<arrLength{
  //  print("The browser in index is \(i) and the browser name is: \(browsers[i])")
// }


// One-Sided Ranges
// .../

//for browsers in browsers[...1]{
  //  print("The browser in index is \(i) and the browser name is: \(browser[i])")
// }


// Logical Operators

var x1: Bool = true
var y2: Bool = true
// Logical Not(a != b)
var z1 = x1 != y2 ? true : false

// Logical And (a && b)
// z1 = x1 && y2 ? true : false

//Logical Or (a || b )
// z1 = x1 || y2 ? true : false
