//
//  Understanding String.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 17/03/2023.
//

import Foundation

var paragraph = "This is paragraph one!"



// Initializing an empty string
//--- string literals.
//--- object initializer.


var paragraph1 = ""
var paragraph2 = String()


//String concatenation.

var firtname = "Olatunji"
var lastname = "Hammed"

var fullname = firtname + lastname

// String Interpolation

var greetings = "The firstname is: \(firtname)"

// counting characters

var paragraph3 = "hello my friends"
// paragraph3.count


// Accessing and Modifying a String

let message = "Guten Tag!"

// message[message.startIndex]

// message[message.index(before: message.endIndex)]

// message[message.index(after: message.startIndex)]

let index = message.index(message.startIndex, offsetBy: 7)
// message[index]


// Inserting:

var text = "Hello there"


// text.insert("!", at: text.index(before: text.endIndex))


// text.insert(contentsOf: " ,trust you are good", at: text.index(before: text.endIndex))


// Removing:

// text.remove(at: text.index(before: text.endIndex))

// Check for prefix and suffix we can use hasPrefix and hasSuffix

// text.hasPrefix("Hello")





