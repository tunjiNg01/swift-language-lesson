//
//  Understanding-variable-and-types.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 14/03/2023.
//

import Foundation;

// Swift is type safe programming language meaning that a variable or const of type String can not mistakenly an Int
// Swift also introduce optional variable meaning that if there is a possibility that a variable is not going to have we can declare has been option program variable or constant.

// variable declaration with type inference

var name: String = ""
// name = "Tunji"

let maximumWithdrawal: Int = 10

// maximumWithdrawal = 12

// declaring multiple variable on a single line

var x = 0, y = 0, z = 0

// declaring multiple variable on a single line with type notation

// var credit, debit : Double

// Comment: use comment to indicate non executable part of our code

//SINGLE COMMENT.
// Single line comment.

//MULTILINE COMMENT.
/* This is also a comment
but is written over multiple lines. */


// Semicolons
// let age = 1; print(age)

// Type Safety and Type Inference

// Typealias

typealias videoVolume = UInt32

var age: videoVolume = 0;


// Boolean


// Tuple

// Tuple declaration

// var httpStatusMessage = (501, "internal server error")
// httpStatusMessage.1

let (code, msg) = httpStatusMessage

var httpStatusMessage = (code: 501, msg: "internal server error")


// Optionals: we use option when we the value may be absent.

// var responseCode: Int? = 404

// If Statements and Forced Unwrapping.

// Optional binding

//if let <#constantName#> = <#someOptional#> {
 //  <#statements#>
// }

// unwrapping optional
var someOptional: String? = "hello there"

var haveValue: String = someOptional!
