//: A UIKit based Playground for presenting user interface
  
import UIKit

// № 1,2

struct Student {

    var name: String {
        didSet {
            let index = name.startIndex
            if name.count > 0 {
                name = name.lowercased().replacingCharacters(in: (index...index), with: String(name[index]).uppercased())
            }
        }
    }

    var secondName: String {
        didSet {

            let index = name.startIndex
            if name.count > 0 {
                secondName = secondName.lowercased().replacingCharacters(in: (index...index), with: String(secondName[index]).uppercased())
            }
        }
    }

    var fullName: String {
        get {
            return name + " " + secondName
        }
        set {
            let words = newValue.split(separator: " ")
            name = words.count > 0 ? String(words[0]) : name
            secondName = words.count > 1 ? String(words[1]) : secondName
        }

    }

    struct DateOfBirth {
        var day: Int
        var month: Months
        var year: Int

        enum Months: Int {
            case January = 1, February, March, April, May,
                 June, July, August, September, October,
                 November, December
        }

        func getAge() -> Int {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.yyyy"
            let dateArray = formatter.string(from: date).split(separator: ".").map {
                Int($0) ?? 0
            }

            var age = dateArray[2] - year

            if dateArray[1] < month.rawValue {
                age -= 1
            } else if dateArray[1] == month.rawValue && dateArray[0] < day  {
                age -= 1
            }
            return age
        }
    }

    var dayOfBirth: DateOfBirth

    var age: Int {
        return dayOfBirth.getAge()
    }

    var hasStudied: Int {
        return age > 6 ? age - 6 : 0
    }

}


var student = Student(name: "Eugene", secondName: "Borisov", dayOfBirth: Student.DateOfBirth(day: 30, month: .November, year: 2001))


print(student.age)
print(student.hasStudied)

// №3,4


struct Point {
    var x: Double
    var y: Double
}


struct Segment {
    
    var a: Point
    var b: Point
    
    var distance: Double {
        
        get {
            return sqrt(pow(b.x-a.x, 2) + pow(b.y-a.y, 2))
        }
        set {
            let cos = (b.x - a.x) / distance
            let sin = (b.y - a.y) / distance
            b.x = a.x + newValue * cos
            b.y = a.y + newValue * sin
        }
    }
    
    var center: Point {
        get {
            return Point(x: (a.x + b.x) / 2, y: (a.y + b.y) / 2)
        }
        set {
            let xDist = newValue.x - center.x
            let yDist = newValue.y - center.y
            a.x += xDist
            a.y += yDist
            b.x += xDist
            b.y += yDist

        }
    }

}





