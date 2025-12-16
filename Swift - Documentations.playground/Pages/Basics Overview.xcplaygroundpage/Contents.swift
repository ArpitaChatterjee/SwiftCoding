import UIKit

var greeting = "Hello, playground"

// The Basics

let myConstant: String = "Hello"

var myVariable: Int = 10

myVariable += 10
print(myVariable)

// Int , Double (used for math) ,Float ,
//CGFloat(used for UI)  , Bool , UInt16.min , UInt16.max ,Date
let implicitInteger = 70
let imDouble = 20.0
let implicitFloat: Float = 70.0

let label = "The width is"
let width = 44
let widthLabel = label + String(width)

let apple = 21
let appleSumarry = "I have \(apple) apples"

let banana = 3
let bananaSumarry = "I have \(banana + apple) bananas"

let float = 2.0
var x=0.0, y = 12, z=0

let myFirstDate: Date = Date()

var red, blu, green : Float

var cat = "car" ; print(cat)

 // Integer bounds
let minValue = UInt8.min //min vlaue = 0 , type uint8
let maxValue = UInt8.max //max value =255, type uint8


//type Safety + type Interference

/*Every value in a Swift program has a type. Every place you store a value — including constants, variables, and properties — also has a type. You might write the type explicitly using a type annotation, or Swift might infer the type from an initial value. Every place in your code where you provide a value, that value’s type must match the place you use it. For example, if part of your code requires a String, you can’t pass it an Int by mistake. This kind of checking makes Swift a type-safe language.*/

let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

let pi = 3.14159
// pi is inferred to be of type Double

let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

//Swift always chooses Double (rather than Float) when inferring the type of floating-point numbers.

//If you combine integer and floating-point literals in an expression, a type of Double will be inferred from the context:

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation


let three = 3
let pointOneFourOneFiveNine = 0.14159
let pii = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double

let integerPi = Int(pi)
// integerPi equals 3, and is inferred to be of type Int

//TYPE Aliases

typealias db = Double

var areaCircle:db =  3.14 * 2 * 2

let orangesbeOranges = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Prints "Eww, turnips are horrible."

//let i = 1
//if i {
//    // this example will not compile, and will report an error
//}
let i = 1
if i == 1 {
    // this example will compile successfully
}







