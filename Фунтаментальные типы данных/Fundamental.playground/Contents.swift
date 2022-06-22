import UIKit

// 1

var distanceImKm = 52.0
var timeInSeconds = 360.0
var result = (distanceImKm * 1000) / (timeInSeconds / 60)

// 2

var first = 111
var second = 222

var concatination = Int(String(first) + String(second))

// 3

var firstNumber = 1
var secondNumber: Int = 2

var t = firstNumber
firstNumber = secondNumber
secondNumber = t

print(firstNumber)
print(secondNumber)

// 4

let fir = 18
let sec: Float = 16.4
let third = 5.7

var sumOfConst = Float(fir) + sec + Float(third)
var mulOfConst = Int(Double(fir) * Double(sec) * third)
var remainder = Double(sec).truncatingRemainder(dividingBy: third)

// 5

var a = 2, b = 3

var equation = (a + 4*b)*(a-3*b)+a*a


// 6

var c = 1.75, d = 3.25

var equation2 =  2*(c+1)*2+3*(d+1)
type(of: equation2)

// 7

var str = "Hello"
let char: Character = "a"
var j = 1, h = 2

print(str + "\(char)\(j + h)")

print("""
*   *   *
 * * * *
  *   *
""")

