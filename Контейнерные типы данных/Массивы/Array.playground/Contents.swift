import UIKit

var arraySequence = Array(1...5)
var array = [1,2,3]
var arrayArray = Array(arrayLiteral: 5, 3, 4)
var arrayRepeat = Array(repeating: "a", count: 5)
type(of: arrayRepeat)

var arrayTest = [1,2,3]

arrayTest[0...1] = [6]

arrayTest

let firstEmptyArray: [Int] = []
let secondEmptyArray = [String]()

let a1 = 1
let a2 = 2
let a3 = 3

let aArray = [a1, a2, a3]
let aArray2 = [1,2,3]

aArray2 == [a1, a2, a3]

var test: Array<[Int]> = [[1,2],[1,3]]


var arrayMethods = [1, 2, 3]

arrayMethods.count
arrayMethods.suffix(2)

arrayMethods.append(4)

arrayMethods.insert(6, at: 1)

arrayMethods.min()

var a = arrayMethods[1...2]

type(of: arrayMethods)
type(of: a)


let numbers = [10, 11, 12.5, 13, 14.5]

let someString = [String](repeating: "Malkovitch", count: 2)

// Homework №2

var types1 = Array(0...10)
var types2 = Array(0..<11)
var types3 = Array(arrayLiteral: 0,1,2,3,4,5,6,7,8,9,10)
var types4 = [1,2,3,4,5,6,7,8,9,10]

// №2

var repeating = Array(repeating: 2, count: 5)
var repeating2 = [Int](repeating: 2, count: 5)

// №4

var fourElements = [1,2,3,4]

fourElements[1...2] = [fourElements.first! + fourElements.last!]
fourElements.sort()

// №5

var numbersHundred = Array(1...100)

var emptyArray = [Int]()

emptyArray = Array<Int>(numbersHundred[24...49])

// №6

var arr = [Character("a"), "b", "c", "d", "e"]

arr.insert("z", at: 1)

var i = UInt8(arr.count)

// №7

var arrSlice = [1,2,3,4]

arrSlice[arrSlice.count - 2]

var arri = [[Character]]()

arri.append([Character("a"), "b", "c"])
arri.append(["d", "e", "f"])

arri.remove(at: 1)

var arr2 = arri.remove(at: 0)

arr2

arri

type(of: arr2)

print(arr2[0])

var firstArray = [1,2,3,4,5]

var secondArray: [UInt] = Array<UInt>(firstArray.dropLast())
