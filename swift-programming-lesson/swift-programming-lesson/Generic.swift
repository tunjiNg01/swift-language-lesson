//
//  Generic.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 17/04/2023.
//

import Foundation


// The generic type simply allow us to to create a function or type that can work with multiple type,
// when you extend a generic you don"t need to indcate the type involved.


// Declaring a generic function.

func ItemListTwo(item: Int) -> [Int]  {
    var items: [Int] = []
    items.append(item)
    return items
}

func ItemsList<T>(item: T) -> [T] {
    var items: [T] = []
    items.append(item)
    return items
}



// Declaring a generic Type.

struct IntQueue {
    var queue: [Int] = []
    
    mutating func addToQueue(item: Int) {
        
        queue.append(item)
        
    }
    
    mutating func removeFromQueue() -> Int? {
        guard !queue.isEmpty else { return nil}
        
        return queue.remove(at: 0)
        
    }
}

var somequeue = IntQueue()
// somequeue.addToQueue(item: 4)


// Constraining a generic type to only accept certain type.

func FindIndexPosition<T: Equatable>(fromValue valueToFind:T, list: [T]) -> Int? {
    for(index, value) in list.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}


// Associated type
// Sometimes when defining protocol its useful to define some placeholder type that we can use in protocol definition, this can be done by declaring some associated type.when we do this, the actual type is not determined until the protocol is adopted.
protocol BrainBox {
    
    associatedtype boxSpecification
    
    func config(modelType model: boxSpecification) -> boxSpecification
}

struct Mitsubish : BrainBox {
    
    typealias boxSpecification = String
    
    func config(modelType model: String) -> String {
        return model
    }
}


// Adding constrain to an associated type

protocol Container {
    associatedtype items: Hashable
}















