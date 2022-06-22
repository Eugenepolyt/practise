import UIKit

var abc: String = "a"
abc.append("b")
print(abc)

// Homework 1

var str = "Swift"
let ch = Character("b")
var array = Array(repeating: String(ch), count: str.count)
type(of: array)
str = String(ch)

// 2

let str2 = "JonhWick"

var ch1 = str2[str2.startIndex]

print(ch1)

var ch2 = str2.index(before: str2.endIndex)

print(str2[ch2])

var string = "БабаЯга"

let fourChar = string.index("БабаЯга".startIndex, offsetBy: 3)

let result = string[string.startIndex...fourChar]

// 3

var blackSet: Set<Character> = ["\u{265A}","\u{265B}","\u{265C}","\u{265D}","\u{265E}","\u{265F}"]

var whiteSet: Set<Character> = ["\u{2654}","\u{2655}","\u{2656}","\u{2657}","\u{2658}","\u{2659}"]

var test = "abc"

let firstIndex = test.startIndex

test[firstIndex]


