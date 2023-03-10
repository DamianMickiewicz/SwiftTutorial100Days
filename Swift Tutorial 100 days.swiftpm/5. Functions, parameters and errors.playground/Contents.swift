import UIKit

// Writing functions
func printHelp() {
    let message = """
Welcome to myApp!

Run this app inside a directory of images and MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

// Accepting parameters
print("Hello, world!")

func square(number: Int) {
    print(number * number)
}

square(number: 8)

// Returning values
func square1(number: Int) -> Int {
    return number * number
}

let result = square1(number: 8)
print(result)

// Parameters labels
func square2(number: Int) -> Int {
    return number * number
}

let result1 = square2(number: 8)

func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Gosia")

// Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Gosia")

// Default parameters
func greetDefault(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greetDefault("Taylor")
greetDefault("Gosia", nicely: false)

// Variadic functions
func squareVariadic(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

squareVariadic(numbers: 1, 2, 3, 4, 5)

// Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}

// Inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

