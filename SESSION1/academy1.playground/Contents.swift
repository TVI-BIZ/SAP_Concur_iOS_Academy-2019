//: # iOS Academy I
//: ### Basic Swift syntax, types, and control flow
//:
//: Find more information for [Swift](http://swift.org), [Swift Book](https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html)
//:
//: ---

//: ## First program

print("iOS Academy!")
// place cursor here and tap shift + return

//: 1. Now it's your turn, try to print something!
print("Hi Vlad! Welcome to academy!")
// YOUR CODE GOES HERE


//: ---

//: ## Constants and Variables
//: ### Constants and variables associate a name with a value of a particular type

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

//: ### Variables can be changed

currentLoginAttempt = 1
currentLoginAttempt = 2
currentLoginAttempt = 5
print(currentLoginAttempt)

//: 1. Try to declare new variable
//: 2. Try to declare new constant
//: 3. Try to change value of a variable
//: 4. Try to change value of a constant
var myVar = 10
let myLet = 10
// YOUR CODE GOES HERE
myVar = 5
//myLet = 6
print(myVar)
print(myLet)
//: ---

//: ## Useful stuff
//: ### Printing Constants and Variables

print(currentLoginAttempt)
print("some string")

//: ### Comments


var oneMore = "Hi from OneMore!"
print(oneMore)

//: ---

//: ## Types
//: ### Type is an object that, loosely speaking, describes how a (real or possible) element or elements [...] might behave
//: [Source](https://en.wikipedia.org/wiki/Type_(model_theory))

//: ### Swift Types Examples

let integer: Int = 8
let unsignedInteger: UInt = 8

let double = 4.0
let float1: Float = 4.0
let float2: Float = 4

var boolean = true
boolean = false

let string = "Some string"

//: ### Optionals

let optionalInteger: Optional<Int> = 8
let optionalUnsignedInteger: Optional<UInt> = 8
let optionalIntegerDifferentSyntax: Int? = 8

var optionalIntegerNil: Int? = 300
optionalIntegerNil = nil

if optionalIntegerNil != nil {
    print("convertedNumber contains some integer value.")
}

if let unwrappedVariable = optionalIntegerNil {
    print("convertedNumber contains \(unwrappedVariable)")
} else {
    print("convertedNumber is nil")
}

var oneMoreT : Float = 89.0
var oneMoreTT: Float = 5.6
//print(oneMoreT + oneMoreTT)

let one = 1
let two = 2
print(one + two)
let optInt1:Optional<Int> = 1
let optInt2:Optional<Int> = 2

//: 1. Try to declare new variables of different type, print them, inspect their type
//: 2. Try to decalre new int variable and new double variable, then try to add them
//: 3. Try to declare two Optional Int, try to add them

// YOUR CODE GOES HERE

//: ---

//: ## Basic Operators
//: ### An operator is a special symbol or phrase that you use to check, change, or combine values.

//: ### Assignment Operator

let weKnowItAlready = 123
let copy = weKnowItAlready

//: ### Arithmetic Operators

1 + 2
5 - 7
7 * 8
10.0 / 4.0
9 % 4

//: ### Comparison Operators

1 == 1   // true because 1 is equal to 1
2 != 1   // true because 2 is not equal to 1
2 > 1    // true because 2 is greater than 1
1 < 2    // true because 1 is less than 2
1 >= 1   // true because 1 is greater than or equal to 1
2 <= 1   // false because 2 is not less than or equal to 1

//: ### Logical Operators

let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

//: 1. Print result of 1 == 1 && 2 < 1 || 2 > 1
//: 2. Print logical NOT of previous example

// YOUR CODE GOES HERE
print (!(1 == 1 && 2 < 1 || 2 > 1))
//: ---

//: ## Strings and Characters
//: ### A string is a series of characters, such as "hello, world" or "albatross". Swift strings are represented by the String type.

let simpleString = "Some simple string"
let multilineString = """
    Some
    multiline
    string
"""
let specialCharacter = "Happy \u{1F42E}"
let cat = "🐱💃🏽"

//: ### String Mutability

var variableString = "Horse"
variableString += " and carriage"

//: ### String Interpolation

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
var anothermessage = "\(multiplier)" + "HI!"


//: ### Useful string properties

let testStringProperties = "String type in Swift has many useful properties"
testStringProperties.isEmpty
testStringProperties.count

var strVar = "One"
var strTwo = "Two"
var mix = strVar + strTwo

print(strVar+strTwo)
print(mix.count)
print("hi" + String(multiplier))
//: 1. Create two new String variables, concatenate them and print their length
//: 2. Create new variable that will contain your year of birth, then use string interpolation to print it

// YOUR CODE GOES HERE
var myYear = 1977
print(String(myYear))
print(String(myYear).count)
//: ---

//: ## Control Flow
//: ### For-In Loops

let animal = "DoggyStyleInTheMorningAndADay"
for character in animal {
    print(character)
}

for number in 0...5 {
    print("number: \(number)")
}

//: ### While Loops

var index = 0
while index < 5 {
    print("index for while: \(index)")
    index = index + 1
}

var conditionIndex = 0
var condition = true
while condition {
    print("conditionIndex: \(conditionIndex)")
    conditionIndex += 1
    condition = conditionIndex < 4
}

//: ### Conditional Statements

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}

temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

//: ### Switch

let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

//: 1. Print triangle like this below, try to use loop (there are many ways how to implement it, if you're done try to do it differently)
// *
// **
// ***
// ****
//: 2.

// YOUR CODE GOES HERE
for i in 0...4 {
    if i == 1 {
        print("*")
    } else if i == 2 {
        print("**")
    } else if i == 3{
        print("***")
    } else if i == 4 {
        print("****")
    }
}

//    else if i ==2 {
//    print("**")
//}

//else if i ==3 {
//    print("***")
//}
//else if i ==4 {
//    print("****")
//}


//: ---
