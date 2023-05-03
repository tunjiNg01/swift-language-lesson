//
//  Collections Type.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 17/03/2023.
//

import Foundation


// The control flow in swift programming language.



// For-in loop: We use the for-in loop to iterate over a sequence of Item
let namet = "Mathew"
for character in namet {
    print(character)
}
 
// for i in 1..<5 {
 //   print(i)
// }


// While loop:

var currentScore = 0
var finalScore = 20
var counterState = false

// while counterState {
   // counter += 1
   // currentScore += 7
// }


repeat {
    currentScore += 6
}while counterState

// print(counter)
print(currentScore)

// Conditional Statement: If and Switch

var score = 35

if score < 50 {
    print("Keep it up!, your score is \(score)")
}else {
    print("You passed!, your score is \(score)")
}

// Switch statement

switch score {
case 1...40:
    print("You failed please try again later")
case 40...50:
    print("You are just below average")
case 50...100:
    print("Congratulation you passed")
default:
    print("No matches found")
}


// No implicit fallthrough: It implies that when the condition in a switch case the execution stops and the program doesnt have to stop without having to implement break
// Compound case
let someNumber = 2

switch someNumber {
case 0, 2, 4, 6:
    print("This is an even number")
case 1, 3, 5, 7:
    print("This is an odd number")
default:
    print("No case is matched")
}


// Value Binding

let coordinate = (2.4566777, 46234677.788)
switch coordinate {
case (let x, 46234677.788):
    print("The longitude is: \(x)")
case (0, let y):
    print("The latitude \(y)")
case let (x, y):
    print("The coordinate is (\(x), \(y))")
}

// the where clause

// Control transfer statement: Continue, Break, return, and continue.
// Break in a loop, Break in switch statement


// Continue:
// Break:
var phrase = "Hello all trust you have fantastic experience"
var consonant = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in phrase {
    
    if charactersToRemove.contains(character){
       break
    }
    consonant.append(character)
}
print(consonant)

// Guard:
func sayHi(person: String? = nil) {
    guard let name = person else {
        print("Hello there!")
        return
    }

    print("Hello  \(name).")
}


sayHi()

// Defferd action:
var temperature = 45
if temperature < 90 {
    defer {
        print(temperature)
    }
    temperature += 5
}
