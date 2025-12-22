//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


// Control Flow

//if, switch -> conditional
// for-in, while, repeat-while > make loops

let indiSc = [32, 32, 312, 9782, 12]
var teamScore = 0

for score in indiSc {
    if score > 50{
        teamScore+=5
    }else{
        teamScore+=1
    }
}
print(teamScore)

                                                                                                                            
let scoredecoration = if teamScore > 10 {
    "🎉"
}else { "" }

print("Score ", teamScore, scoredecoration)


// use if + let -> if values might be missing -> these values are represented as optionals.
// an optional calue either contains a value or contains nil to indicate a missing value.

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionslName: String? = "john"
var greeingM :String? = "Hello !"
let name = optionslName ?? "world"

greeingM = "hello \(name)"
print(greeingM)

let nickname: String? = nil
if let nickname {
     print("Hey,  \(nickname)")   // doesnt print anytging since nickname is nil
}


///// Switch

let veggie = "carrot"
switch veggie {

case "red pepper":
    print ("a vegetable")
case "celery":
    print ("another vegetable")
case let x where x.hasSuffix("ot"):
    print("is it an orange carrot?")
default :
    print ("unknown")
}


//for-in -> to iterate over itesms in a dictonary by providing pair of names
// dictionaries -> unordered collection -> key-value pair
let interestingNo = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1,1,2,3,5,8],
    "square": [1,4,9,16,25],
]
var largest = 0

for (_, numbers) in interestingNo {
    for number in numbers{
        if number > largest {
            largest = number
        }
    }
}

print(largest)


//while , repeat-while -> repeat a block of code until condition changes

// order of operations does matter
//PEMDAS
// likecount = likeCount - 1 * 1.5
// likecount = (likeCount - 1) * 1.5

var n=2
while n<=100 {
    n*=2
}
print(n)

var m=2
repeat{
    m*=2
}while m<100
        
print(m)

// keep an index in a loop by using ..< to make a range of indexes.
//   (..<) -> to make a range that omits its upper limit , and includes only the lower limit
// (...) -> to make a range that includes both the limits
        
for i in 1..<5{
    print(i)
}
 // 1, 2,3,4


if n>3 && n<10 ||  largest > 100{ }


///Operator
///
let b = 10
var a = 5
a = b
// a is now equal to 10
//If the right side of the assignment is a tuple with multiple values, its elements can be decomposed into multiple constants or variables at once:
let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2
//Unlike the assignment operator in C and Objective-C, the assignment operator in Swift doesn’t itself return a value. The following statement isn’t valid:
//if x = y {
//    // This isn't valid, because x = y doesn't return a value.
//}



1 + 2       // equals 3
5 - 3       // equals 2
2 * 3       // equals 6
10.0 / 2.5  // equals 4.0
//Unlike the arithmetic operators in C and Objective-C, the Swift arithmetic operators don’t allow values to overflow by default. You can opt in to value overflow behavior by using Swift’s overflow operators (such as a &+ b). See Overflow Operators.
//The addition operator is also supported for String concatenation:
"hello, " + "world"  // equals "hello, world"

9 % 4    // equals 1
-9 % 4   // equals -1

let three = 3
let minusThree = -three       // minusThree equals -3
let plusThree = -minusThree   // plusThree equals 3, or "minus minus three"

//Comparison Operators
1 == 1   // true because 1 is equal to 1
2 != 1   // true because 2 isn't equal to 1
2 > 1    // true because 2 is greater than 1
1 < 2    // true because 1 is less than 2
1 >= 1   // true because 1 is greater than or equal to 1
2 <= 1   // false because 2 isn't less than or equal to 1


(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"



//Nil-Coalescing Operator
//The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type. The expression b must match the type that’s stored inside a.
//The nil-coalescing operator is shorthand for the code below:
// a != nil ? a! : b



