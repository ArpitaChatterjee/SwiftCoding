//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


// Arrays
var fruits = ["strawberries" , "abe" , "tangirine"]
fruits[1]
//arry automatically grows as we add element
fruits.append("blue")
print(fruits)

//Dictionaries
var occupation = [
    "malcom": "captaoin",
    "kaylee": "mechanic",
]
occupation["jay"] = "Pubic Relation"

fruits = [] // empty array
occupation = [:] //empty dictionary


//Declaration of array and dic empty

let emptyArray : [String] = []
let emptyDictionary: [String:String] = [:]

// Tuples ->  group multiple values into single compound value.  -> any type , combination of multiple types -> (Int, Int, Int), or (String, Bool)

let http404Error = (400 , "Not Found") // type = (Int , String)

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404".
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found".
 

let (justStatusCode, _) = http404Error
print("The status code is \(justStatusCode)")

print("The status code is\(http404Error.0)")
print("the status msg is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")

print("the status code is \(http200Status.statusCode)")
print("the Status code is \(http200Status.description)")
