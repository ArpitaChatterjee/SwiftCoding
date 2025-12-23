import Foundation

/*
 
 Object Oriented Prog
 
 During the life of an app, we create and destroy objects
 Create = Initalize (init) = Allocate (add to memory)
 Destroy = Deinitalize (deinit) = De-allocate (remove from memory)
 
 
 /// Automatic Reference Counting  (ARC) ***** (imp)
 A live count of the number of objects in memory
 Create 1 obj -> count goes up by 1
 Create 2 obj -> count up by 2
 Destroy 1 obj -> count goes down by 1
 
 The more objects in memory -> the higher the count -> the heavier the app is -> the slower the app perform
 // we want to keep the ARC count keep as low as possible while running the app.
 we want to create object only when needed and destory when not needed
 
 // For eg -> If an app has 2 screens and user is moving from screen 1->2 . We want only to allocate screen 2 WHEN we need it (i.e. when the user clicks on a btn to switch to Screen2)
 When we get to screen 2 , we may need to deallocate screen 1.
 
 
 // There are 2 types of Memory
 -> Stack & Heap
 only objects in heap are counted in ARC
 
 
 Stack --> (FIFO)
 Objects in Stack -
 String , bools , int , most basic type ,
 New : Struct , Enum
 
 
 Heap-->
 Object in Heap -
 Function ,
 New : Class , Actors
 
 
 
 iPhone is a "multi- threaded environment"
 There are multiple "threads" or "engine" running simultaneously
 Each threads has a Stack
 but there is only 1 Heap for all threads
 
 
 Therefore :
 Stack is faster, lower memory footprint , preferable (struct) -> reliable
 Heap is slower , higher memory Footprints , risk of threading issues .
 
 
 Value vs Reference types
 
 Objets in the Stack are "value" types.
 When you edit a Value type , you create a copy of it with the new data . // basically in stack , we c/p the previous value , but during psting edit/update the value and paste.
 
 
 Objects in the Heap are "Reference" types.
 When you edit a Reference type, you edit the object that you are referencing. This "reference" is called "pointer" because it "points" to an object in the Heap (in memory).
 this is the reason why there is only one heap in the memory . -> its shared accorss all threads -> hence risk is involved .
 
 
 */

struct quiz {
    
    let title : String = "Hello, World !!"
}

class classroom {
    
    let title : String = "Hello, World !!"
}



 /* Class vs Struct explained to a 5-year old
 
 Imagine a school and in the school there are classroom
 within each class, there are quizess
 During the day. the teacher will hand out many different quizzes to different classes. The students will ans. the quizes and return them back to teacher.
 
 "school" = app
 "classroom" = class
 "quiz" = struct
 
  
  In this eg. we have a classroom , there are many actions that occur inside the classroom.
  In the code, we create a class and perform actions within the class
  
  
  In this eg., there are manu different types of quizzes. The teacher hands out the quizzess and the students take the quizzess and return them to the teacher
  In the code , we create many structs and pass them around out app with ease.
  
  
  Note :
  This metaphor is Not perfect :)
  Technical a "quiz" can be a class, etc.
  
  We want to use a class for things like :
  "Manager" "Data Service" "SErvice" "Factory" "ViewModel"
  Objects that we create and wnat to perdorm actions inside
  
  We want to use a struct for things like :
  Data Models
  Objects that we create and pass around our app. 
   
 
 
 */


