//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


//Optionals - situation where a value may be absent.

let possibleNo = "123"
let convertedNo = Int(possibleNo)

let poChar = "hello"
let conChar = Int(poChar) // o/p : nil
//Because the initializer in the code above might fail, it returns an optional Int, rather than an Int.

//NIL - set an optional var. to a valueless state by assigning it to a special value nil

var serverResponseCode: Int? = 404 //contains an actual int value = 404
serverResponseCode = nil  // no has no value

var abc : Int? // automatic to nil
 

// Optional Binding - > used to find out if optional contains a value or not. If yes , then make the value available as a temporary constant or variable. - used with if, guard , while

if let actualNo = Int(possibleNo){
    print("the string \"\(possibleNo)\" has an int value of \(actualNo)")
}else {
    print ("string couldnot be converted")
}
    
    
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100".


if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100".

//Providing a fallBack value -> nil-coalescing operator (??).
// if value on the left of ?? is not nil (!=nil) then that value is unwrapped and uesd. Otherwise value of the right is ued.
let name:String? = nil
let greetings = "hello " + (name ?? "friend") + "!"
print(greetings)
