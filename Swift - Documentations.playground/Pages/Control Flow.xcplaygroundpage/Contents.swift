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






