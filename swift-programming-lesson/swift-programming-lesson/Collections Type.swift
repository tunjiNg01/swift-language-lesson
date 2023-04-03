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


// How to combine 2 arrays : Array initializer and Initializer syntax

// Accessing and modifying array
// -- You can access and modify an array through its property and method or subscript syntax
// -- Method: count, isEmpty, append() or =+, insert(item, at:index), remove(at:index), removeLast()
// -- To access an element of an array we can use a subscript also we can use the subscript syntax to replace a range of value





// Iterating over an array
// -- using method enumeration() if we need to access the index together with the value




//SET: A set store distinct value in an un-order manner, we can use set when an order is not
//-----important and we need an item to appear only once
// A type must be hashable to be stored in a set, so if we want to
//--our own custom type in set it has to comform to the hashable protocol
// Creating a set: Using Array litteral and Object initializer

// Accessing and modifying a set
//Method and properties: count, isEmpty, remove(item), contains(item),insert(item), sorted().



// Perform set Operation
//--- union(), intersection(), symmetricDifference(_:), subtracting(_:)


//Set Membership
//--- ==, isSubset(of:), isSuperset(of:), isStrictSubset(of:),isStrictSuperset(of:), isDisjoint(with:),




//DICTIONARY
// A dictionary stores associations between keys of the same type and values
// of the same type in a collection with no defined ordering.
// A dictionary key must conform to hashable protocol
// Creating an empty dictionary



// Accessing and Modifying a Dictionary
//--Method and properties: count, isEmpty, updateValue(_:forKey:), removeValue(forKey:),
// The updateValue(_:forKey:) method returns an optional value of the dictionary’s value type.
// You can also use subscript syntax to retrieve a value from the dictionary for a particular key.
// NOTE: Because it’s possible to request a key for which no value exists, a dictionary’s subscript returns an optional value of the dictionary’s value type.



