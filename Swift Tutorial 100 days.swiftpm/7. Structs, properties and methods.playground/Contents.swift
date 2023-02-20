import UIKit

// Creating structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"
print(tennis.name)

// Computed properties
struct SportCP {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) in not an Olympic sport"
        }
    }
}

let chessBoxing = SportCP(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// Property observes
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


// Methods
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 300)
london.collectTaxes()


// Mutating methods
struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()


// Properties and methods of string
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


// Properties and methods of arrays
var toys = ["Woody"]
print(toys.count)

toys.append("Buzz")
toys.firstIndex(of: "Buzz")

print(toys.sorted())
toys.remove(at: 0)


// Initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"


// Self
struct PersonSelf {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}


// Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree")
    }
}

struct PersonLazy {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init (name: String) {
        self.name = name
    }
}

var ed = PersonLazy(name: "Ed")
ed.familyTree


// Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let edStudent = Student(name: "Ed")
let taylorStudent = Student(name: "Taylor")
Student.classSize


// Access control
struct PersonAC {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let edAC = PersonAC(id: "12345")


