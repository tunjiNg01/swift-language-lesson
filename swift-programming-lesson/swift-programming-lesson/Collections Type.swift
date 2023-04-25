//
//  Collections Type.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 17/03/2023.
//

import Foundation
// Collection there are 3 types of collection and they are array, set and dictionary
// Collections in swift are always clear about the type of value they can store
// Now let take a look at it one after the other


// The Array

// How to Create an array : Array initializer and Array literals
var itemList: [Int] = [2, 4, 5, 6, 7]
var itemListTwo = Array<Int>(repeating: 3, count: 4)

// print(itemListTwo.count)


// How to combine 2 arrays : Array initializer and Initializer syntax
var itemListThree = Array<Int>(repeating: 2, count: 4)

// var combineItem = itemListThree + itemListTwo
itemListThree += itemListTwo

print(itemListThree.count)

// Accessing and modifying array
// -- You can access and modify an array through its property and method or subscript syntax
// -- Method: count, isEmpty, append() or =+, insert(item, at:index), remove(at:index), removeLast()
// -- To access an element of an array we can use a subscript also we can use the subscript syntax to replace a range of value

var groceryList = ["Milk", "Soap", "Paste", "Noodles"]

let xone = groceryList.remove(at: 3)
groceryList.append("Fanta")
groceryList.insert("Coke", at: 2)
groceryList.removeLast()

groceryList[0] = "Soda drink"
// groceryList[1...3] = ["Chocolate", "Salt"]
groceryList += ["Apple"]



// print(groceryList)


// Iterating over an array
// -- using method enumeration() if we need to access the index together with the value

for item in groceryList {
    print(item)
}

for (index, value) in groceryList.enumerated(){
    print("Item index is:\(index + 1) and value: \(value) ")
}


//SET: A set store distinct value in an un-order manner, we can use set when an order is not
//-----important and we need an item to appear only once
// A type must be hashable to be stored in a set, so if we want to
//--our own custom type in set it has to comform to the hashable protocol
// Creating a set: Using Array litteral and Object initializer

var vowel = Set<Character>()

///  print(vowel.count)

var consonant: Set<Character> = []
// print(consonant)

// Accessing and modifying a set
//Method and properties: count, isEmpty, remove(item), contains(item),insert(item), sorted().

vowel.insert("a")
vowel.insert("i")
vowel.insert("e")
// emphasizing set definition

print(vowel.contains("i"))

// vowel.remove("i")

// print(vowel.contains("i"))
print(vowel)

// Iterating over a set
for i in vowel.sorted() {
    print("\(i)")
}


// Perform set Operation
//--- union(), intersection(), symmetricDifference(_:), subtracting(_:)
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigit:Set = [3,5]

let newset = oddDigits.union(evenDigits).sorted()
let newset2 = oddDigits.intersection(evenDigits)
let newset3 = oddDigits.symmetricDifference(evenDigits)
let newset4 = oddDigits.subtracting(singleDigit)
print(newset4)

//Set Membership
//--- ==, isSubset(of:), isSuperset(of:), isStrictSubset(of:),isStrictSuperset(of:), isDisjoint(with:),

print(evenDigits.isDisjoint(with: oddDigits))
print(singleDigit.isSubset(of: oddDigits))
print(oddDigits.isSuperset(of: singleDigit))
print(oddDigits.isStrictSuperset(of: singleDigit))
//DICTIONARY
// A dictionary stores associations between keys of the same type and values
// of the same type in a collection with no defined ordering.
// A dictionary key must conform to hashable protocol
// Creating an empty dictionary

var someDictionary:[Int:String] = [:]


// Accessing and Modifying a Dictionary
//--Method and properties: count, isEmpty, updateValue(_:forKey:), removeValue(forKey:),
// The updateValue(_:forKey:) method returns an optional value of the dictionary’s value type.
// You can also use subscript syntax to retrieve a value from the dictionary for a particular key.
// NOTE: Because it’s possible to request a key for which no value exists, a dictionary’s subscript returns an optional value of the dictionary’s value type.

someDictionary[1] = "Dogs"
someDictionary[2] = "Fowl"
someDictionary[3] = "Bird"

someDictionary.updateValue("Chcken", forKey: 2)
print(someDictionary.removeValue(forKey: 2)!)
print(someDictionary.count)

// Iterating over a dictionary
for (k,v) in someDictionary {
    print("key: \(k), value:\(v)")
}
for (_,v) in someDictionary {
    print(" value:\(v)")
}

for v in someDictionary.values {
    print(" value:\(v)")
}

for v in someDictionary.keys {
    print(" value:\(v)")
}


// If you need to use a dictionary’s keys or values with an API that takes an Array instance, initialize a new array with the keys or values property:

let arrOfValues = [String](someDictionary.values)
print(arrOfValues)
let arrOfKey = [Int](someDictionary.keys)
print(arrOfKey)
