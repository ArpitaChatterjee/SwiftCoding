//: [Previous](@previous)

import Foundation


//Rule of Thumb : Make the variables as private as possible
// it is easy to debug , when variables changing the values is less


struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool // can set the value from inside the class
    
    
//    we can use botht the func, but func 2 is more suitable
    func updateFavoriteStatus(newValue : Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    mutating func updateFavoriteStatus2(newValue: Bool) {  // hence have a mutating func to set the var inside the struct
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy
    case action , horror
}


class MovieManager {
    
//     public - anyone can get and set value- form outsifde the object
    public var movie1 = MovieModel(title: "Baby day's out", genre: .comedy, isFavorite: false)
    
//        cant get/set the value from ourside the class
    private var movie2 = MovieModel(title: "Avengers", genre: .action, isFavorite: false)
    
//    read is public , but set is private - so that class can manage the variable
    private(set) var movie3 = MovieModel(title: "Shrek", genre: .comedy, isFavorite: false)
    
    func updateMovie3(isFavorite : Bool){
        movie3.updateFavoriteStatus2(newValue: isFavorite)
    }
    
}

let manager = MovieManager()

// Make isFavorite = true


//manager.movie1 = manager.movie1.updateFatevoriteStatus(newValue: true)

manager.movie1.updateFavoriteStatus2(newValue: true)
print(manager.movie1)

manager.updateMovie3(isFavorite: true)
print(manager.movie3)

// Version 1
// We can GET and SET the value from outside the object.
// "too public"
//let movie1 = manager.movie1
print(manager.movie1)
manager.movie1.updateFavoriteStatus2(newValue: false)
print(manager.movie1)


// version 2
// we can't GET or SET the value rfom outside the object
// needs to be done from inside the class
//let movie2 = manager.movie2
//manager.movie2.updateFavoriteStatus2(newValue: true)


// version 3
// We can GET the value from outside the object, but we can't SET the value from outside the object.
// best practice
manager.updateMovie3(isFavorite: true)
print(manager.movie3)

public class SomePublicClass {}
internal struct SomeInternalStruct {}
private func somePrivateFunction() {}

/*
 
 Note : private and public are by far the most common but there are others as well
 
 -- open
     -access is the highest (least restrictive) access level
     -enable entities to be used within any source file from their defining module,
      and also in a source file from another module that imports the defining module
 -- public
    - same feature as open . but with a difference
    -
 --package
    - enables entities to be used within any source files from their defining package but not in any source file outside of that package.
    - You typically use package access within an app or framework that’s structured into multiple modules.
 -- internal
   - have a default access level of internal
   - enables entities to be used within any source file from their defining module, but not in any source file outside of that module.
 -- fileprivate
   - restricts the use of an entity to its own defining source file.

 -- private
   - he lowest (most restrictive) access level.
 
 */


/*
 
 Open vs Public
 
 Open access applies only to classes and class members,
 Marking a class as open explicitly indicates that you’ve considered the impact of code from other modules using that class as a superclass, and that you’ve designed your class’s code accordingly.

 
 public access by allowing code outside the module to subclass and override .


 

 */
