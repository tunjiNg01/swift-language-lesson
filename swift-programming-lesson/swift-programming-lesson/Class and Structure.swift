//
//  Class and Structure.swift
//  swift-programming-lesson
//
//  Created by MACBOOK PRO on 23/03/2023.
//

import Foundation


// Class and structure and Properties

struct someStruct {
    
}

// class
class someClass {
    
}

// memberwise initialization
// unlike class instance don't support memeberwise initialization so
//---- basicaly memberwise is only supported by Struct
struct CarsBrand {
    var toyota: String;
    var nisan: String;
}

// CarsBrand(toyota: "MQ-16", nisan: "BH-45")

// Structure and enumeration are value type

// Class are also reference type.


//PROPERTIES: They associates value with a particular class, struct, enum
// There are two type of properties stored, computed properties
// Computed are provided by class, enum, struct, while stored properties are properties by only struct and class
// Also we can define properties observer to perform an action when a properties changes.
// Properties observer can be defined on the properties we stored ourself or an inherited properties from a super classs

//----Stored Properties: These are constant or variable that are stored as part of an instance of a class or structure.

struct Mammals {
    let numOfLeg: Int
    let numOfArm: Int
}

// please note when an instance of a struct is defined as const so is all is properties, this happen because struct is a value type
let manInstance = Mammals(numOfLeg: 2, numOfArm: 2)
// manInstance.numOfArm = 4


// Lazy stored properties a lazy stored properties are properties whose initial are calculated until when its first used

class Editor {
    
    let filePath = "samplevideo.mp4"
    
}

class VideoProcessor {
    lazy var editor = Editor()
    var data: [String] = []
}

var someInst = VideoProcessor()
// print(someInst.editor.filePath)


// COMPUTED VALUE: enum, struct, class, provide computed properties, computed does not use to store any value but provided getter and optional setter.

struct Configuration {
    var mode: String
}

struct StateManager {
    
    var conf = Configuration(mode: "light")
    
    var appMode: String {
        get {
           
            return conf.mode
        }
        
        set {
            conf.mode = newValue
        }
    }
}

// Read only computed properties.
//-- Computed properties are said to be  readonly if only get is used. i.e no set property.
struct ShapeCalculator {
    
    var height: Int, width: Int
    
    var size: Int {
        return height * width
    }
}

// PROPERTY-OBSERVERS:
//--- Property observer observes a change in value and takes an action.
//--- We can property observer to the following, Stored Value we difined, inherrited stored value, inherited computed value.
//--- There are two type of observer 1. willSet, didSet.
//--- The willSet observer are called just before the value is set and it comes with a newValue prop that gives us the newValue.
//--- The didSet observer are called after the value have been set and its provides the oldValue props.


class Dice{
    var rolls:Int = 0{
        willSet{
            
            print("A new value was detected: \(newValue)")
            
        }
        didSet{
            
            print("The old value is: \(oldValue)")
            
        }
    }
}

//Proper-wrapper: A property wrapper provides a layer of seperation between the code that defined how a property is define and the code that manage how the propert is set or stored

@propertyWrapper
struct ItemNum {
    private var num = 0
    private var max:Int
    var wrappedValue: Int {
        get{
            return num
        }
        set {
            if newValue > max {
                num = max
            }else{
                num = newValue
            }
        }
    }
    //setting initial value
    init(num: Int = 0, max: Int) {
        self.num = num
        self.max = max
    }
    
}

struct Favourites {
   @ItemNum(max: 10) var numOfItem: Int
}

// Projecting value from a property wrapper.

