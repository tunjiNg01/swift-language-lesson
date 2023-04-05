//
//  main.swift
//  recording
//
//  Created by MACBOOK PRO on 03/04/2023.
//

import Foundation

var name: String = "Hello, Tunji"
 
name = "Hello Thomas"

print(name)

// var heigth, age: Int

// constant

let age: Int = 23



print(age)


// Type safety
// var house: String = "Hello"
// house = 45

// Type Inferrence
var house = "Hello"

// Tuple

var statusCode = (code:401, message:"Bad Request")

// print(statusCode.message)

let (code, message) = statusCode

// print(code)
//print(message)

// Optional Value

var someOptional: String? = "Great"

// print(someOptional)

// if let anyName = someOptional{
 //   print(anyName)
//}


// unwraping optional variable
var haveValue: String = someOptional!

print(haveValue)



