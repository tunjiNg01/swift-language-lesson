//
//  Initialization.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 03/04/2023.
//

import Foundation

// Initialization: This help us prepare an instance of a class, structure, enum, all stored property have to initialize before an instance will be create.

class Book {
    var author: String
    init(author: String) {
        self.author = author
    }
}
 var bk = Book(author: "Thomas Reid")

// Setting Initial value

class BookTwo{
    var category: String;
    init() {
        category = "Thomas Doe"
    }
}
var bk2 = BookTwo()

// Initialization parameter

class BookThree {
    var authorName: String
    var authorIdentify: String
    
    init(authorName: String, uniquecode: Int) {
        self.authorName = authorName
        self.authorIdentify = "author Identity is \(authorName)-\(uniquecode)"
    }
}


// Optional properties:
class QuestionAndRespone {
    var quest: String
    var resp: String?
    
    init(quest: String, resp: String? = nil) {
        self.quest = quest
        self.resp = resp
    }
   // func sayResponse(){
      //  print(resp)
  //  }
}

var Q1 = QuestionAndRespone(quest: "How are you doing")
 // Q1.resp = "I am well thanks"

// Assigning Constant Properties During Initialization. Modify the example above for demo


// Memberwise Initializers for Structure Types

struct SomeStruct {
    var name: String
}

// var somestruct1 = SomeStruct(name: "Joe")

// Initializer deligation: Initializer deligation is when initializer call another initializer to perform some operation this canbe to avoid code duplication

struct BookFive{
    var author: String
}

struct BookFour{
    var author: String
}

struct BookShelf {
    var bookFive: BookFive
    var bookFour: BookFour
    
    init(bookFive: BookFive, bookFour: BookFour) {
        self.bookFive = bookFive
        self.bookFour = bookFour
    }
    
    init(){
        self.init(bookFive: BookFive(author:"Tunji"), bookFour: BookFour(author: "Tunde"))
    }
}


// Class inheritance and initialiazation

// swift provides 2 forms of initializer for a class
// Designated initializer
// Convinience initializer: This is secondary and it can be used to create a different of a particular type
// initializer inheritance




// Failable initialization
// init?()
