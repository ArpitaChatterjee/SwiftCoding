//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// Bools
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


let userName: String = "Hello"
let userIsPre: Bool = false
let userIsNew: Bool? = true

func getUsername() -> String {
    userName
}

func getUserPremium() -> Bool {
    userIsPre
}

// limited to 1 return type
func getUserInfo() -> String{
    
    let name = getUsername()
    let userNew = userIsNew  ?? true
    
    return name
}

//tuple can combine multiple pieces of data
func getUserInfo2() -> (String, Bool) {
    
    let name = getUsername()
    let premi = getUserPremium()
    
    return (name, premi)
    
}

var usrData1 : String = userName
var usrData2 : (String, Bool, Bool) = (userName , userIsPre , userIsNew ?? false)


let info1 = getUserInfo2()
let name1 : String = info1.0 // calling the tuple item with index


func getUserInfo3() -> (name: String, userIsPre: Bool) { //naming the tuple items with name , so that calling the perticular value is easy
    
    let name = getUsername()
    let premi = getUserPremium()
    
    return (name, premi)
    
}

let info3 = getUserInfo3()
let name = info3.name
let usp = info3.userIsPre


// we can do it for n- items

func getUserInfo4() -> (name: String, userIsPre: Bool, userIsNew: Bool) { //naming the tuple items with name , so that calling the perticular value is easy
    
    let name = getUsername()
    let premi = getUserPremium()
    let userIsNew = userIsNew ?? false
    
    return (name,premi, userIsNew)
    
}


func doSomething (info : (name: String, userIsPre: Bool, userIsNew: Bool)){
    
}

let info = getUserInfo4()
doSomething(info: info)  // pointing the info in doSomething method to getinfo4() 


