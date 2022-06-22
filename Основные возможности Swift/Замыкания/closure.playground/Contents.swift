import UIKit


var swift = {
  print("Cool - I can use closures!")
}
func writeCode(using language: () -> Void) {
  language()
  print("That'll be eleventy billion dollars, please.")
}
writeCode(using: swift)


let printDocument = { (copies: Int) in
  for _ in 1...copies {
    print("Printing document...")
  }
}

var signAutograph = { (name: String)  in
    print("To \(name), my #1 fan")
}
signAutograph("Lisa")

func modify(string: String, with closure: (String) -> (String) ) -> String {
    return closure(string)
}

let result = modify(string: "Hello") { string in
    return "\(string), World!"
}

print(result)
print()
print()

// 1

var hello = { print("Hello world") }

hello()

type(of: hello)

// 3

var printStr = { (str: String) -> () in
    print(str)
}

printStr("ff")

// 4

var sum: (Int, Int) -> Int = { $0 + $1 }

sum(1, 6)

// 6

var diff: (Int, Int) -> Int = { $0 - $1 }

func funcTask(first: Int, second: Int, third: (Int, Int) -> Int) -> Int {
    return third(first, second)
}

print(funcTask(first: 1, second: 2, third: diff))
print(funcTask(first: 1, second: 2, third: {$0 * $1}))

//7

func someAction() -> (() -> Int) {
    var currentValue = 0
    return {
        currentValue = currentValue + 1
        return currentValue
    }
}
let increment = someAction()
print(increment())
print(increment())
print(increment())

//9

let arrayOfInt = [2,55,1,2,77,24,1,2]

print(arrayOfInt.sorted(by: >))

// 10

let arrayIfFloat = [2,4,6.2,11,2,7,6.7]
let sortedArray = arrayIfFloat.sorted() {first, second in first > second }
print(sortedArray)

