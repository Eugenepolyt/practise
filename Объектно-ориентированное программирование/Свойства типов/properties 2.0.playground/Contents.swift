import UIKit

//class Student {
//    var name: String {
//        get {
//            return "Name"
//        }
//    }
//
//
//    static var pop = 1
//
//    init() {
//        Student.pop += 1
//    }
//
//}
//
//
//
//var s1 = Student()
//var s2 = Student()
//Student.pop

// №1

struct FileDescription {
    
    enum TypeOfFile {
        case shadow
        case open
    }
    
    static var maxSize = 100
    
    var filePath: String
    var typeOfFile: TypeOfFile
    
    var nameOfFile: String {
        get {
            let separator = filePath.lastIndex(of: "/")!
            return String(filePath[filePath.index(after: separator)..<filePath.endIndex])
        }
    }
    var packagePath: String {
        get {
            let separator = filePath.lastIndex(of: "/")!
            return String(filePath[filePath.startIndex..<separator])
        }
    }
    
    var fileContent: String
    
}

var file = FileDescription(filePath: "/Users/evgenijborisov/Desktop/XcodeProjects/skutarenko/Basics.playground", typeOfFile: .open, fileContent: ".")

file.nameOfFile
file.packagePath

// №2

enum Colors: Int {
    
    static var countOfColors = 4
    static var startedColor = Colors.white
    static var endColor = Colors.red

    case white = 0xFFFFFF
    case gray = 0x808080
    case purple = 0x800080
    case red = 0xFF0000
}

// №3

class Person {
    
    struct AgeRestriction {
        lazy var min = 4
        lazy var max = 100
    }
    
    struct LengthRestriction {
        lazy var name = 20
        lazy var secondName = 30
    }
    
    struct MinWeightHeight {
        lazy var weight = 5.0
        lazy var height = 40.0
    }
    
    static var ageRestriction = AgeRestriction()
    static var lengthRestriction = LengthRestriction()
    static var minWH = MinWeightHeight()
    static var countOfPerson = 0

    var name: String {
        didSet {
            if name.count > Person.lengthRestriction.name {
                name = oldValue
            }
        }
    }
    var secondName: String {
        didSet {
            if secondName.count > Person.lengthRestriction.secondName {
                secondName = oldValue
            }
        }
    }
    var age: Int {
        didSet {
            if age < Person.ageRestriction.min || age > Person.ageRestriction.max {
                age = oldValue
            }
        }
    }
    var height: Double {
        didSet {
            if height < Person.minWH.height  {
                height = oldValue
            }
        }
    }
    var weight: Double {
        didSet {
            if weight < Person.minWH.weight {
                weight = oldValue
            }
        }
    }
    
    init(name: String, secondName: String, age: Int, height: Double, weight: Double) {
        self.name = name
        self.secondName = secondName
        self.age = age
        self.height = height
        self.weight = weight
        
        Person.countOfPerson += 1
    }
}


var per = Person(name: "Alex", secondName: "Borisov", age: 20, height: 179, weight: 60)

per.age = 1
per.age
