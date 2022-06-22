import UIKit

let possibleString = "1945"
let convertPossibleString = Int(possibleString) // 1945
 
let unpossibleString = "Одна тысяча сто десять"
let convertUnpossibleString = Int(unpossibleString) // nil

type(of: convertUnpossibleString)

var optVar: Int? = 12
var intVar = 34
let result = optVar! + 34 // 46
 
// проверяем тип данных извлеченного значения
type(of: optVar) // Int.Type

var int1: Int! = 1
int1 = nil

type(of: int1)

int1 == nil

let markCount: Int? = 2
// определение наличия значения


var ff = [1,2,3]

let fg = ff.last

type(of: fg)

var easy = "1"
var medium = "contra"
var hard = "play game"
easy = medium
hard = medium
easy = hard
easy = hard
var gameTuple = (easy, Optional(hard))
var gameText: String = gameTuple.0


type(of: three)
type(of: two)
type(of: one)

typealias Text = String
let first: Text = "212"
let second: Text = "121"
let third: Text = "eugene25"

if let first = Int(first) {
    print(first)
}

if let second = Int(second) {
    print(second)
}

if let third = Int(third) {
    print(third)
}

// last

typealias TurpleType = (numberOne: Text?, numberTwo: Text?)
var one: TurpleType = ("190", "67")
var two: TurpleType = ("100", nil)
var three: TurpleType = ("-65", "70")

switch one {
    case let (first, second) where first != nil && second != nil:
        print(second!)
        print(first!)
    case let (first, second) where first == nil && second != nil:
        print(second!)
    case let (first, second) where first != nil && second == nil:
        print(first!)
    default:
        break
}

// 7


var dict: [String: [String: UInt]] = [:]

dict["Borisov"] = ["2021-11-15": 5, "2021-12-12": 3]
dict["Burkov"] = ["2021-11-15": 4, "2021-12-12": 4]
dict["Pimenov"] = ["2021-11-15": 3, "2021-12-12": 4]
var averageList = [Double]()

for (name, jour) in dict {
    var summaryMark = 0
    for (_, mark) in jour {
        summaryMark += Int(mark)
    }
    
    let average = Double(summaryMark) / 2
    
    print("Средний балл студента \(name) = \(average)")
    averageList.append(average)
}

var summary = 0.0

for mark in averageList {
    summary += mark
}

//9



if let list = dict["Borisov"] {
    var newDict = list
    newDict["11-11-11"] = 5
    dict["Borisov"] = newDict
}

dict

//10

typealias Coordinates = (alpha: Character?, num: Int?)

typealias Chessman = [String:Coordinates]

var figures: Chessman = ["White King": ("b", 2), "Black King": ("b", 2), "Pawn": (nil, nil)]

for (figure, coord) in figures {
    if let alpha = coord.alpha, let num = coord.num {
        print(figure + " находится на координатах " + String(alpha) + ":" + String(num))
    } else {
        print(figure + " нет на поле")
    }
}

