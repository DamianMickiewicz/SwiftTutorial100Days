import UIKit

// Creating basic closures
let driving = {
    print("I'm driving in my car")
}

driving()

// Accepting parameters
let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving1("London")

// Returning values
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// Closures as parameters
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

// Trailing closure syntax
travel {
    print("I'm driving in my car")
}

// Closures with parameters
func travel1(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel1 { (place: String) in
    print("I'm going to \(place) in my car")
}

// Closures with return values
func travelReturnValues(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travelReturnValues { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Shorthand parameter names
func travelShorthand(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travelShorthand {
    "I'm going to \($0) in my car"
}

// Closures with multiple parameters
func travelMultipleParameters(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travelMultipleParameters {
    "I'm going to \($0) at \($1) miles per hour."
}

// Returning closures
func travelReturningClosures() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travelReturningClosures()
result("London")

let result2 = travelReturningClosures()("London")

// Capturing values
func travelCapturingValues() -> (String) -> Void {
    var counter = 1
    return {
        print("I'm going to \($0)")
        counter += 1
    }
}

let resultCaptuuringValues = travelReturningClosures()
resultCaptuuringValues("London")
resultCaptuuringValues("London")
resultCaptuuringValues("London")
resultCaptuuringValues("London")

