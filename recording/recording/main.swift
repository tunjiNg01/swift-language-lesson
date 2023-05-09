//
//  main.swift
//  recording
//
//  Created by MACBOOK PRO on 03/04/2023.
//

import Foundation

func add( _ age: [Int]) -> Int {
    var sum = 0
    for x in age {
        sum += x
    }
    
    return sum
}

print(add([2,3,4,5]))


func someFunction() -> (String, Int)? {
   
   ("Some string", 12)
}

print(someFunction()!.0)

func findSum(_ numbers: Double... ) -> Double {
    var total: Double = 0
    
    for number in numbers {
        total += number
    }
    
    return total
    
}

print(findSum(2,2,45,67,456))

var x = 100
var y = 6

func swapValue(_ x: inout Int, y: inout Int){
    let z = x
    x = y
    y = z
}

swapValue(&x, y: &y)

print(x)


