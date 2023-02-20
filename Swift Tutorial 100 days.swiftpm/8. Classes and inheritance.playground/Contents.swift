import UIKit

// Creating Classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, bread: String) {
        self.name = name
        self.breed = bread
    }
}

let poppy = Dog(name: "Poppy", bread: "Poodle")


// Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, bread: "Poodle")
    }
}


// Overriding methods
class DogNoise {
    func makeNoise() {
        print("Woof!")
    }
}

class PoodleNoise: DogNoise {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppyNoise = PoodleNoise()
poppyNoise.makeNoise()


// Final Classes
final class DogFinal {
    func makeNoise() {
        print("Woof!")
    }
}


// Copying Objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

// Deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


// Mutability
class SingerMutability {
    let name = "Taylor Swift"
}

let taylor = SingerMutability()
taylor.name = "Ed Sheeran"
print(taylor.name)


