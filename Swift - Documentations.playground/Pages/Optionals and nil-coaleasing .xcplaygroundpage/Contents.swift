//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


//Optionals - situation where a value may be absent.

/*
 how to safely unwrap optional variable in swift ? --> very important
 
 three ways ->
 
 1. using Nil- coaleasing - give a default value
 print(myString ?? "some default value")
 
 2. using guard  ->
 guard let newValue = userIsPremium else {
 return false
}
return newValue
 
3. using  if-let ->       \
 if let newValue = userIsPremium {
     return newValue
}
 or
 if let userIsPre {
      return userIsPre
    }
     
 */

// how to unsafely unwrap a optional
//  //explicitly unwrap optional -> unsafely
// "i will get the count because i know 100% that username is not nil"
// this will crash the application if username is nil -> never adviced -> (!.)
// let count3: Int = username!.count
// }

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


//optional
// there is always a value and its a Boolean
let myBool : Bool = true

//we dont know if there is a value if ther is , its a Boolean
var myOtherBool : Bool? = nil // (? = means optional value)

//print(myOtherBool)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool)
//myOtherBool = nil
//print(myOtherBool)


// nil coalescing operator (??) - means otherwise

let newValue: Bool? = myOtherBool

// "The value of myOtherBool(if there is one) , else true"
let newVal2: Bool = myOtherBool ?? true

print("new value 2: \(newVal2.description)")   // .description - doesnot print the Optional() in the code


var myString: String? = nil

print(myString ?? "some default value")



// -----------------------------------

let userIsPremium : Bool? = nil

func checkUser() -> Bool? {
    return userIsPremium
// or return userIsPremium
    // if we need to do only one return and no other work needs to be done in the fucntion , just use the word
}

func checkUserIsPre() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkUserIsPre()


//if - let
// when if-let is succcessfull enter the closeure
 func checkUserIsPre2() -> Bool {
    
//    if there is a value, let newValue equal that value
    if let newValue = userIsPremium {
//        here we have access to the non-optional value
        return newValue
    }
    else {
        return false
    }
}


 func checkUserIsPre3() -> Bool {
    
    if let newValue = userIsPremium {
        return newValue
    }
    
    return false
    
}


func checkUserIsPre4() -> Bool {
    
    if let userIsPremium {
        return userIsPremium
    }
    return false
}


// Guard
// when a guard is a failure, enter the closure
 func checkuserIsPre6() -> Bool {
    
    // Make sure there is a value , if there is , let newValue equal that value , else return out of the function
    guard let newValue = userIsPremium else {
        //executes
        return false
    }
    return newValue // returned when above condition is true , i.e access to the non-optional value
    
}


func checkuserIsPre8() -> Bool {
    
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}



/// --------------------

let  userIsNew : Bool? = true
let userDidCompleteOnboarding : Bool? = true
let userFavoriteMovie : String? = nil

func checkUserSetup() -> Bool {
    
    if let userIsNew , let userDidCompleteOnboarding , let userFavoriteMovie {
//         userisn = bool AND
//userDidCompleteOnboarding == bool AND
//userFavoriteMovie == String
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
    }
    else {
        //userisn = nil OR
        //userDidCompleteOnboarding == nil OR
        //userFavoriteMovie == nil
        return false
    }
}

func checkUserSetup2() -> Bool {
    
    guard let userIsNew , let userDidCompleteOnboarding , let userFavoriteMovie else{
        //userisn = nil OR
        //userDidCompleteOnboarding == nil OR
        //userFavoriteMovie == nil
        return false
    }
    
    //userisn = bool AND
    //userDidCompleteOnboarding == bool AND
    //userFavoriteMovie == String
    return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie
        )
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool {
    
    if userIsNew && userDidCompleteOnboarding{
        return true
    }
    return false
}


// layered - if-let
func checkUserSetup3() -> Bool {
    
    if let userIsNew {
        //userIsNew = bool
        if let userDidCompleteOnboarding{
            //userDidCompleteOnboarding == bool
            if let userFavoriteMovie{
//                userFavoriteMovie == String
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnboarding: userDidCompleteOnboarding,
                    userFavoriteMovie: userFavoriteMovie
                )
            }else{
                //userFavoriteMovie == nil
                return false
            }
        }else{
            //userDidCompleteOnboarding == nil
            return false
        }
    }else {
        //userisn = nil
        return false
    }
}


// Layered gurad let -> guard is preffered cuz of easy readability

func checkUserSetup4() -> Bool {
    
    guard let userIsNew else{
        //userisn = nil
        return false
    }
    
    //userIsNew = bool
    guard let userDidCompleteOnboarding else {
        //userDidCompleteOnboarding == nil
        return false
    }
    
    //userDidCompleteOnboarding == bool
    guard let userFavoriteMovie else {
        //userFavoriteMovie == nil
        return false
    }
    
//    userFavoriteMovie == String
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnboarding: userDidCompleteOnboarding,
        userFavoriteMovie: userFavoriteMovie
    )
    
}


// Optional Chaining

func getUsername() -> String? {
    return "usernmae"
}

func getTitle() -> String {
    return "title"
}

func getUserData() {
    
    let username: String? = getUsername()
    
    // (?.) -> means the username is optional value -> " i will get the count if the username is not nil" -> making count optional
    let count: Int? = username?.count
    
    let title: String = getTitle()
    
    // i will get the count always
    let count2: Int = title.count
    
    
    //if username has a value, and first character in username has a value, then return the value in lowercase else put a default value of false.
    //optional chaining
    let firstCharIsLowercase = username?.first?.isLowercase ?? false
    
    
    //explicitly unwrap optional -> unsafely
    // "i will get the count because i know 100% that username is not nil"
    // this will crash the application if username is nil -> never adviced -> (!.)
    let count3: Int = username!.count
}

//

