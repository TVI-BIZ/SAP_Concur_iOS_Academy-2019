import UIKit

protocol Soundable{
    func makeSound()
}

class Cat: Soundable {
    func makeSound() {
        print("Meow!")
    }
}
class Dog: Soundable{
    func makeSound() {
        print("Wow!")
    }
}

let array : [Soundable] = []

for item in array {
    item.makeSound()
}

class MockObject: Soundable {
    func makeSound() {
        print("test")
    }
}





