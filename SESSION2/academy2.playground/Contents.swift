//: # iOS Academy II
//: ### Functions, classes, enums, basic collection types
//:
//: [Goolge Colab](https://colab.research.google.com/github/tensorflow/swift/blob/master/notebooks/blank_swift.ipynb), [Playground Online](http://online.swiftplayground.run)

//: ## Lesson 1 recap

//: ### What do we know (so far):
//: 1. Constants and Variables
//: 2. Printing, commenting
//: 3. Types
//: 4. Basic operators
//: 5. Strings and Characters
//: 6. Control Flow

//: ### Exercise
//: * Using loop: when number is odd print "is odd", when number is even print "is even", use range from 0 to 10.

// YOUR CODE GOES HERE
for i in 0...10 {
    if i % 2 == 0{
        print ( "\(i) is even")
    }
    else {
        print(String(i) + " is odd")
    }
}
//: ---

//: ## Functions
//: ### Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.

//: ### Functions Without Parameters and Without Return Values

func printMyName() {
    print("Jan")
}

printMyName()

//: ### Functions Without Parameters

func myName() -> String {
    return "Vlad"
}

let thisIsMyName = myName()
print(thisIsMyName)
print(myName())

//: ### Functions With Parameters

func greet(name: String) -> String {
    return "Hello \(name)"
}
//greet(name:"Vl")


func greet(name: String, lastName: String) -> String {
    return "Hello \(name) \(lastName)"
}
greet(name: "Donald", lastName: "Trump")


func greet(with greeting: String, 
           name: String = "Jan", 
           lastName: String = "Krukowski") -> String {
    return "\(greeting) \(name) \(lastName)"
}

greet(with: "HI!", name: "Vlad", lastName: "Tagunkov")

print(greet(name: "Jan"))
print(greet(name: "Jan", lastName: "Krukowski"))
print(greet(with: "Hi!"))

//: ### Composing functions

print(greet(name: myName()))

//: ### Exercise
//: * Write a function to return true is number is odd and false if number is even (what parameters should this function take? what should be the return value?)
//: * Write a function to take age as a parameter, return "kid" when age is from 0 to 13, "teenager" when age is from 14 to 18 and adult when age is more then 18

// YOUR CODE GOES HERE
func number_checker(num:Int)-> Bool{
    if num % 2 == 0{
        return true
    }
    else{
        return false
    }
}
number_checker(num: 8)
func age_checker(age:Int) -> String{
    if age > 0 && age < 13{
        return "kid"
    }
    else if age > 14 && age < 18 {
        return "teen"
    }
    else if age > 18 {
        return "adult"
    }
    return "adult"
}
//: ---

//: ## More Advenced Functions

//: ### InOut Parameters

func swapNumbers(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapNumbers(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//: ### Exercise
//: * Write a function that takes two string as a parameters and swaps them when first one is longer that the second one

// YOUR CODE GOES HERE
func string_swapper(_ a: inout String, _ b: inout String){
    if a.count > b.count{
    let tempStr = a
    a = b
    b = tempStr}
}
var hi = "hiooooo"
var bi = "bigo!"
string_swapper(&hi, &bi)
print(hi)
print(bi)


//: ---

//: ### Function Types
//: ### Every function has a specific function type, made up of the parameter types and the return type of the function.
//:
//: [More here](https://docs.swift.org/swift-book/LanguageGuide/Functions.html#ID174)

let printMyNameFunc1 = printMyName
print(printMyNameFunc1())

let printMyNameFunc2: () -> Void = printMyName
print(printMyNameFunc2())

let myNameFunc: () -> String = myName
print(myNameFunc())

// what function does it refer to?
let greetFunc1: (String) -> String = greet
let greetFunc2: (String, String) -> String = greet
let greetFunc3: (String, String, String) -> String = greet
