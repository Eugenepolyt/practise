import UIKit

var greeting = "Hello, playground"

var dict1 = ["1": 2, "2" : 3, "4": 3]

var dict2: Dictionary<Int, Int> = [1:3, 4:5]

type(of: dict2)

var dict3 = Dictionary(dictionaryLiteral: (3,2), (4,3))

var a = dict1.removeValue(forKey: "2")

dict1["1"] = nil

dict1

// Homework

var b = (1, 2)

// №2

var di1 = ["first": Character("a")]
var di2: [String:Character] = ["first": "s"]
var di3 = Dictionary(dictionaryLiteral: ("a", Character("a")))
var di4 = Dictionary(uniqueKeysWithValues: [("s", Character("s"))])
type(of: di1)
type(of: di2)
type(of: di3)
type(of: di4)

// №4

var dictTask = [1:"1", 2:"2", 3: "3"]
var set: Set = Set(dictTask.keys)
type(of: set)
var array: Array = Array(dictTask.values)
type(of: array)

// №5

var dictArr = [1: ["a", "b"]]

let dictElCount = dictArr.count

var arrayLul = Array(repeating: dictElCount, count: dictElCount)
type(of: dictArr)


