//
//  main.swift
//  recording
//
//  Created by MACBOOK PRO on 03/04/2023.
//

import Foundation

var someDictionary: [Int: String] = [:]
someDictionary[1] = "Apple"
someDictionary[2] = "Banana"
someDictionary[3] = "Orange"

someDictionary.updateValue("Mango", forKey: 3)
someDictionary.removeValue(forKey: 3)

print(someDictionary)


for (i, v) in someDictionary {
    print("index: \(i), value: \(v)")
}

for k in someDictionary.values {
    print(k)
}

let arrOfValues = [String](someDictionary.values)
let arrOfKeys = [Int](someDictionary.keys)
print(arrOfKeys)






















