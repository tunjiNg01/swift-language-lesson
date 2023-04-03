//
//  Function.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 21/03/2023.
//

import Foundation

// Function: These are chunk of code that performs a specific task

// Defining and calling a function

func add(age: [Int]) -> Int {
    var sum = 0
    for x in age {
        sum += x
    }
    
    return sum
}

// add(age: [2,3,4,5,6])

func greet(name: String) -> String {
    var greetings = "Hello!, \(name)"
    return greetings
}

// greet(name: "Tunji")

// Prameterless Function

func someFunction() -> String
{
    return "Hello world!"
}

// Function without a return or void

func voidFunction()
{
    print("Hello! Luke")
}

// Function with multiple return value

func MultipleReturn(array : [Int]) -> (min: Int, max: Int) {
    var currentMinimum = array[0]
    var currentMaximum = array[0]
    
    for value in array[1..<array[array.count]]{
        if value < currentMinimum {
            currentMinimum = value
        }else if value > currentMaximum {
            currentMaximum = value
        }
    }
    
    return (min: currentMinimum, max: currentMaximum)
}

// optional tuple return

func optionTuple(array:[Int]) -> (min: Int, max:Int)? {
    if array.isEmpty{return nil}
    var mini = 0
    var maxi = 0
    return (min:mini, max: maxi)
}

// Function with implicit return
func greeter(for person: String) -> String {
    "hello" + person;
}

// Argument label and parameter name


// Function with default parameter
func someFunction(name: String = "tunji"){
    
}

// Variadic parameter: the variadic parameter accept 0 or more value of specific types

func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total
}

// mean(2,4,5,6,7,6)

// in-out parameter
var xv = 100
var yv = 4
func swapPosition(_ x: inout Int, y: inout Int){
    let tempA = x
    x = y
    y = tempA
}

// swapPosition(x:&xv, y: &yv)
