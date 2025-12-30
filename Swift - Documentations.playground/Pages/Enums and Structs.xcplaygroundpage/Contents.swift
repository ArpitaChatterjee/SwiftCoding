//: [Previous](@previous)

import Foundation

/*
 
 Struct are fast -> hence our fav
 Struct are stored in the Stack (memory)
 Objects in the Stack are Value types
 Value types are copied and mutated
 
 */


struct Quiz{
    
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
//  Structs have an implicit init
//    we can customoize init if we create of our own
    
//    init(title: String, dateCreated: Date){   // 1
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    init(title: String, dateCreated: Date = .now){ //2 puting default value for dateCreated
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    init(title: String, dateCreated: Date = .distantFuture, isPremium: Bool?){   // 3 add a optional value
//        self.title = title
//        self.dateCreated = dateCreated
//        self.isPremium = isPremium
//        }
    
    init(title: String, dateCreated: Date? , isPremium: Bool?){   // 4 add a optional value at a declaration only in the parameter
        self.title = title
        self.dateCreated = dateCreated ?? .distantFuture // using nil-coalasing to unwrap the Optional value . If value passed for dateCreated is nil , it will take the default ".distantFuture" as the final value.
        self.isPremium = isPremium
        }
}

let myObj: String = "Hello World"

//let myQuiz: Quiz = Quiz(title: "quiz 1", dateCreated: .now) // .now takes the current date
//let myQuiz2: Quiz = Quiz(title: "quiz 2") //since dateCreated already has a default value
//let myQuiz3: Quiz = Quiz(title: "quiz 3", isPremium: nil)
let myQuiz4: Quiz = Quiz(title: "quiz 4", dateCreated: nil, isPremium: false)


print(myQuiz4.title)


// --------------

// UserModel -> a Data Model


// "Immutable Struct" = all "let" constants = NOT mutable = "cant mutaute it" -> data will never change in the middle of any proces or function. -> whenever used accorss all the models or app
//
struct UserModel {
    
    let name: String
    let isPremium: Bool?
}

var user1 : UserModel = UserModel(name: "Raj", isPremium: false)

@MainActor func markUserAsPremium(){
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

markUserAsPremium()

// ---------------------------

// "mutable Struct"
struct UserModel2{
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Raj", isPremium: false)

@MainActor func markUserAsPremium2(){
    
    print(user2)
    
//    "mutate" the struct
    user2.isPremium = true
    
    print(user2)
}

markUserAsPremium2()

// ---------------

// " Immutable Struct " -> this is a better approach than 1 since function is callde from inside the struct -- used basic
struct UserModel3 {
    
    let name: String   // create and immutable struct
    let isPremium: Bool
    
    func markAsPremium(newValue: Bool) -> UserModel3 { // create a new version of the struct with the same data
        UserModel3(name: name, isPremium: newValue) // and update whatever data i'm changing
    }
}

var user3 = UserModel3(name: "Raj", isPremium: false)
user3 = user3.markAsPremium(newValue: true)
print(user3)



// -------------------

// "Mutable Struct"  -- advance struct


struct UserModel4 {
    
    let name: String
    private(set) var isPremium: Bool // meaning we can set the value of isPremium from inside the struct only
    
    mutating func markAsPremium(){
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue : Bool){
        isPremium = newValue
    }
}

var user4 = UserModel4(name: "Raj", isPremium: false)
user4.markAsPremium()
print(user4)
user4.updateIsPremium(newValue: true)






// Enum  is the same as struct but in Enum we have all the known cases at run-time .
// its stack type - but we cant Mutate them

struct CarModel{
    let brand : CarModelBrand
    let model : String
}

struct CarBrand {
    let title: String
}

// Enums are stored the same way in memory like Struct , but we cannot mutate them .
enum CarModelBrand {
    case ford
    case toyota
    case tesla , audi , mercedes
    
    var title : String {
        switch self{
        case .audi :
            return "Audi"
        case .ford :
            return "ford"
        case .tesla :
            return "tesla"  //cases should be exhaustive else it will return an error - or maybe have a default value (not advised)
        default :
            return "Default"
        }
    }
}


// these are the scenarios , when only struct is used , then brand becomes mutable and it cant be verified - hence enum is used to make it static , so it cant be misused in the code . it will only be whats mentioned

//var car1 : CarModel = CarModel(brand: "Ford", model: "Corolla")

//var brand1 : CarBrand = CarBrand(title: "Ford")

//var car1 = CarModel(brand: brand1, model: "Corolla")


var car1 = CarModel(brand: .ford, model: "Corolla")


var fordBrand : CarModelBrand = .ford // here self is the fordbrand passed 

print(fordBrand.title) // "ford"
