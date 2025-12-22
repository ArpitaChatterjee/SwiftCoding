//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)



func myFristFunc() {
    print("first func ")
    mySecondFunc()
}
func mySecondFunc() {
    print("second func ")
}

myFristFunc()

// func + list of arg in paranthesis + (->) used to differ return type of func from return type of arg.

func greet (person : String, day : String) -> String {
    return "hello \(person), today is \(day) !!"
}

print(greet(person: "arpita", day: "wednesday"))



func getUsername()-> String {
    let username = "arpita"
    return username
}

func checkIfUsetIsLoggedIn()-> Bool {
    return true
}

let name:String = getUsername()

// -------------------------------

//Always make the variable private in a function unless necessary .

showFirstScreen()

func showFirstScreen(){
    var userCompleteOnboarding : Bool = true
    var userProfileCreated : Bool = true
    
    let status = checkUserStatus(didCompleteOnboarding: userCompleteOnboarding, profileIsCreated: userProfileCreated)
    
    if status == true {
        print("SHOW HOME SCREEN")
    }else {
        print("SHOW ONBOARDING SCREEN")
    }
}

func checkUserStatus(didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool{
    if didCompleteOnboarding && profileIsCreated {
        doSomethingElse(someValue: didCompleteOnboarding)   // calling the functions internally making connection and link
        return true
    }
    else {
        return false
    }
}

func doSomethingElse(someValue: Bool) {
    
}

 
///-------------------------------

// return type - void  -> by default - means returning nothing

let newVal = doSomething()

func doSomething() -> String {

    var title = "Avengers"
    
    // "if title = avenger" then execute this part
    if title == "Avengers" {
        return "Marvel"
    } else {
        return "Not Marvel"
    }
    
}

func doSomethingElse() {
    
    var title = "Avenger"
    
    // guard - > means make sure title = avenger , or else print the statement
    guard title == "Avenger" else {
        print("Not Marvel")
        return  // rest of the function is never gonna execute
    }
    
    print("Marvel")
}

//calculated variables are basically functions
// Generally good for when you dont need to pass data into the function

let no1 = 3
let no2 = 12

func calculatedNo() -> Int {
    return no1+no2
}

func calculateNo(value1:Int , value2:Int) -> Int {
    return value1 + value2
}

print(calculatedNo())
print(calculateNo(value1: no1, value2: no2))

//computed variable
// Generally good for when you dont need to pass data into the function
var calculatedNos: Int {
    return no1 + no2
}
print(calculatedNos)



//Use tuple to -> Make compound value -> to return multiple values form a func.

func calcStats(scores: [Int]) -> (min: Int , max:Int, sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max=score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return(min, max, sum)
}

let stats = calcStats(scores: [5,3,122, 4, 9])
print(stats.sum)
print(stats.2)

