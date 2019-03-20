//: # iOS Academy II
//: ### Classes, Enumerations, Basic Collection Types
//:
//: Find more information for [Swift](http://swift.org), [Swift Book](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
//:
//: ---

//: ## Motivational Speech

//: ## Classes
//: ### A class is a description - a blueprint of an object. And in familiar terms a class is a type of object
/*:
 A class is:
- a blueprint of an object
- a type of object.
- a reference type.
*/
// Basic class syntax

class MyFirstClassName {
    // Properties, init, funcs here
}

// Class Naming

/*:
 Introducing Instances
 - Objects are instances of a class. They are variables of a class of data types. Think of it like: classes are like molds for industrial manufacturing process.
 */
// Lets create an object, an instance of a class, by doing so we create a variable of that class:
let instance = MyFirstClassName()


// Showcase example: Blog post

var blogTitle = "iOS Concur Academy - Class 2"
var blogBody = "We will cover topis today like: Classes, Enums, Basic Data Collections"
var blogAuthor = "Gurami Jobava"

// Lets create another blog post
var blogTitle2 = "iOS Concur Academy - Class 3"
var blogBody2 = "We not will cover topis today like: Classes, Enums, Basic Data Collections"
var blogAuthor2 = "Gurami Jobava"






/*:
1. Try to create a Blog post class and add properties
2. Try to create an intance of the class
3. Try to access class properties and change the value
4. Try to add new variable called `numberOfComments` and add function that when called increments the number by 1
*/
class BlogPost {
   var blogTitle: String = ""
   var blogBody: String = ""
    var blogAuthor: String = ""
    var NumberOfComments: Int = 0
    
    init(blogTitle: String, blogBody: String, blogAuthor: String) {
        self.blogTitle = blogTitle
        self.blogBody = blogBody
        self.blogAuthor = blogAuthor
    }
    func addComment() {
        NumberOfComments += 5
    }
}

//let blogPost2 = BlogPost()
//blogPost2.blogTitle = "New Post Title!"
//blogPost2.blogBody = "Here the blog body!"
//blogPost2.blogAuthor = "Me!"
//blogPost2.NumberOfComments = 44
//
//print(blogPost2.NumberOfComments)

var blogPost3 = BlogPost(blogTitle: "Hello Title", blogBody: "Body Blog Post!", blogAuthor: "Sure Me!!")
/*:
 Introducing `Initializer`
 - An initializer is a method we run whenever we try to create a class object.
 - In the initializer we pass parameters that makes up the class.
 */
class Person {
    var name: String
    var surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

// Now we are trying create an object, an instance of a class
let person = Person(name: "Gurami", surname: "Jobava")

/*:
1. Try to add init method to the Blog Post class that we had before.
*/

// Classes are reference types.
// Reference Type — each instances share a single copy of the data

var individual = Person(name: "Dan", surname: "Smith")
var individual2 = individual

individual2.name = "George"
print(individual.name)
print(individual2.name)

// Reference vs value types image: https://cdn-images-1.medium.com/max/1600/1*6aJyC6_MrCRjdIAgXxAxkQ.png
// Value type - each instance keeps a unique copy of its data

var integer: Int = 2
var integer2 = integer

integer2 = 3

print(integer)
print(integer2)


// Additional interesting material to read if you want to know more about reference vs value types: https://medium.com/@abhimuralidharan/difference-between-value-type-and-a-reference-type-in-ios-swift-18cb5145ad7a

//: ---

//: ## Enumerations (Enums)
//: ### Enumerations are a way of defining new data types.
//: ### Think of it like a dropdown list menu, it gives you possibility to choose only what's inside the dropdown list, not else.

// Syntax for enumerations

enum Name {
    // enumeration values
}

// Lets create a game with player levels using enums
enum Levels {
    case one
    case two
    case three
    case four
}
//enum LevelsN {
//    case one = "You're on level 1, keep it up."
//    case two = "You're on level 2, keep going!"
//    case three = "You're on level 3, almost there!"
//    case four = "Finally, you made it to level 4. You won!"
//}

// Cooler way 😎 of doing it: on one line

// Now lets set a variable to a enumeration case
var playerLevel: Levels = .four
var playerLever5: Levels = .four

/*:
Try to use switch cases for `playerLevel`, for each level it should print like following:
- On level 1 it should print("You're on level 1, keep it up.")
- On level 2 it should print("You're on level 2, keep going!")
- On level 3 it should print("You're on level 3, almost there!")
- On level 4 it should print("Finally, you made it to level 4. You won!")
*/
switch playerLevel {
case .one:
    print("You're on level 1, keep it up.")
case .two:
    print("You're on level 2, keep going!")
case .three:
    print("You're on level 3, almost there!")
case .four:
    print("Finally, you made it to level 4. You won!")
default:
    print("Nothing here!")
}


// Raw Values

enum Universities: String {
    case oxford = "Oxford University was founded in 1096"
    case cambridge = "Cambridge University was founded in 1209"
    case harvard = "Harvard University was founded in 1636"
    case stanford = "Stanford University was founded in 1885."
}

// Did you notice the maping to String?

// Setting it to the variable
//var university: Universities = .oxford
//
//print(university.rawValue)

//: - Try to apply this approach to Levels, previously created enum.
//var AnotherLevel: LevelsN = .one
//print(AnotherLevel.rawValue)

//: ---

//: ## Basic Collections Type - Arrays
//: ### An array is ordered collection type. It stores collections of data of multiple types and orders them numerically.
// Imagine that we have a collection of marvel comic books and in our store we keep 4 books. We store values of each comics.
var comics1 = 12
var comics2 = 24
var comics3 = 22
var comics4 = 55

// What if we sold one book or we want to add one more book into our store?


// Lets create an array of `comics` and place all inside array.
var comicsValues = [12, 24, 22, 55]

// Add new value - (append)
comicsValues.append(34)

// Count the array
comicsValues.count

// Change the exisiting value, in this example we are changing the first value
comicsValues[0] = 14

// When we print the first value should be 14 instead of 12
print(comicsValues)

// NOTE: Arrays use zero-indexing

// Insert a value at certain position
print(comicsValues)
comicsValues.insert(100, at: 2)

// Remove a value from the array
print(comicsValues)
comicsValues.remove(at: 1)

// comicsValues.removeFirst()
// comicsValues.removeLast()
// comicsValues.removeAll()

// Create an empty array without values
var someArray = [String]()
print(someArray.count)



/*:
 1. Try to create an empty array of your favorite song names that would be of type String
 2. Challenge: Try to append your array with 4 your favorite song names in a single line
 3. Try to remove from your playlist 1 song and print all song names using for in loop
*/
var songArray = [String]()
songArray.append(contentsOf: ["Song1","Song2"])
songArray.remove(at: 1)


