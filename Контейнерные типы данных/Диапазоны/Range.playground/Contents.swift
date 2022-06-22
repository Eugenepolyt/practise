import UIKit

let rangeInt = 1..<5

let rangeStirng: Range<String> = "a"..<"z"

let openRange = 1...

let array = [1,2,3,4]

print(array[openRange])

let partialRange: PartialRangeFrom<UInt8> = UInt8(8)...

"a" < "C"

// Homework №2


var rangeFirst = "a"..."z"
var rangeTwo = "1"..."a"

rangeTwo = rangeFirst

print(rangeTwo)

var a = ..<UInt8(2)

// №6

let range = -100...100

var item: UInt = 21

var inRange = range.contains(Int(item))

// №7

var rangeLat = "A"..."Z"

rangeLat.lowerBound
rangeLat.upperBound




