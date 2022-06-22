import UIKit

// 1

let name = "Mike"

switch name {
    case "Mike":
        print("Это майк")
    case "John":
        print("Это джон")
    case "Kek":
        print("Это кек")
    default:
        break
}

// 2

var open = true

var string = open ? "Открыто" : "Закрыто"

// 3

var var1 = 1
var var2 = 3
var var3 = 1

let result = (var1 > var2 ? var1 : var2) > var3 ? (var1 > var2 ? var1 : var2) : var3


// 4

var A: (x: Int, y: Int) = (-8, -3)
var B: (x: Int, y: Int) = (4, -12)
var C: (x: Int, y: Int) = (8, 10)

let AB = sqrt(Double(((B.x - A.x) * (B.x - A.x)) + ((B.y - A.y) * (B.y - A.y))))
let AC = sqrt(Double(((C.x - A.x) * (C.x - A.x)) + ((C.y - A.y) * (C.y - A.y))))
let BC = sqrt(Double(((C.x - B.x) * (C.x - B.x)) + ((C.y - B.y) * (C.y - B.y))))

var isTriangle = AB + AC > BC ? true : false

// 5

var lang = "ru"

var days: [String]
var chars = "up"

switch lang {
   case "ru" where chars == "down":
     days = ["пн", "вт", "ср", "чт", "пт", "сб", "вс"]
   case "ru" where chars == "up":
     days = ["ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ", "ВС"]
   case "en" where chars == "down":
     days = ["mn", "ts", "wd", "th", "fr", "st", "sn"]
   case "en" where chars == "up":
     days = ["MN", "TS", "WD", "TH", "FR", "ST", "SN"]
   default:
     days = []
}
days

typealias Operation = (operandOne: Float, operandTwo: Float, operation: Character)

let oper: Operation = (24.9, 22.32, "*")

switch oper {
    case let (first, second, operation) where operation == Character("+"):
        print(first + second)
    case let (first, second, operation) where operation == Character("-"):
        print(first - second)
    case let (first, second, operation) where operation == Character("*"):
        print(first * second)
    case let (first, second, operation) where operation == Character("/"):
        print(first / second)
    default:
        break
}

