//
//  main.swift
//  recording
//
//  Created by MACBOOK PRO on 03/04/2023.
//

import Foundation

// Basic operator
var someValue: String = ""

// Arithmetic operator
// these are ( +, -, *, /, %)

// compound assigment operators
var age: Int = 25
age /= 4

// print(age)

// Ternary operator
let pageHeight = 40
let hasHeader = true

let rowHeight = pageHeight + (hasHeader ? 20 : 0)

// let a b c be variable
// a ? b : c

// Comparison in swift
var productRating = 8
var serviceRating = 6

// Equal
// var rating = productRating == serviceRating ? "equal rating" : "not equal"

// Greater
// var rating = productRating >= serviceRating ? "product rating is \(productRating)" : "service rating is \(serviceRating)"

// less than
var rating = productRating <= serviceRating ? "product rating is \(productRating)" : "service rating is \(serviceRating)"

// nill coalescing operator
// a ?? b

var someOptionalVar: String? = "Dave"

var haveValue = someOptionalVar != nil ? someOptionalVar! : ""

var haveValuTwo = someOptionalVar ?? ""

// print(haveValuTwo)

// Range Operators

for i in 1..<5 {
    print(i)
}

let browsers = ["chrome", "mozilla", "Microsoft"]

for i in browsers[...1]{
    print(i)
}


// Logical operator

let a = true
let b = false

if a != b {
    
}

// LOGICAL AND a && b where  a and b are variable or constant
// LOGICAL OR a || b
// LOGICAL NOT a != b

















