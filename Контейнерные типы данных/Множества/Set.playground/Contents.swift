import UIKit

var greeting = "Hello, playground"

var readings = Set([true, false, true, true])

var setA: Set = [1, 2, 3, 4, 5]

print(type(of: setA))

// №6

var taskSet1 = Set(1...10)
var taskSet2 = Set(5...15)
var taskSet3 = taskSet1.intersection(taskSet2)
var taskset4 = taskSet1.symmetricDifference(taskSet2)
let count = taskset4.count


