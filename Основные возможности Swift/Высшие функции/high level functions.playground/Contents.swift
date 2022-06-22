import UIKit

// 1

func sumOfAll(array: [Int]) -> Int {
    return array.filter{$0 > 0}.reduce(0, +)
}

sumOfAll(array: [1,-2,3,4,-5])

// 2

func powAllElements(array: [Int]) -> [Int] {
    array.map({ (first: Int) -> Int in
        first * first
    })
}

powAllElements(array: [1,2,3,4])

// 3

func task(array: [Int]) -> Int {
    array.count > 0 ? array.reduce(1, *) : 0
}

task(array: [0])

// 4

func filterArray(array: [Int]) -> [Int] {
    array.filter{$0 % 2 == 0}
}

filterArray(array: [1,4,5,1,2,4,6,3,12,3])

// 5

var dict = [1: "один", 2: "два", 3: "три", 4: "четыре", 5:"пять", 6: "шесть", 7:"семь", 8:"восемь", 9:"девять"]
var dicOfTens = [1: "десять", 2: "двадцать", 3: "тридцать", 4: "сорок", 5:"пятьдесят"]
var dicOfHundred = [1: "сто", 2: "двести", 3:"триста", 4:"четыреста", 5:"пятьсот", 6:"шестьсот",
7:"семьсот", 8:"восемьсот", 9: "девятьсот"]


func change(str: String) -> String {
    str.map({(ch: Character) -> String in
        if let number = Int(String(ch)) {
            return dict[number]!
        } else {
            return String(ch)
        }
    }).reduce("", +)
}


func changeHard(str: String) -> String {
    let arrayOfWord = str.split(separator: " ")
    var newArrayString = [String]()
    for word in arrayOfWord {
        let myWordStr = String(word)
        guard let _ = Int(myWordStr) else {
            newArrayString.append(myWordStr)
            continue
        }
        let myWordInt = Int(myWordStr)!
        
        switch myWordInt {
            case 100...999:
                
                newArrayString.append(dicOfHundred[myWordInt / 100]!)
                
                
                if (myWordInt / 10) % 10 != 0 {
                    newArrayString.append(dicOfTens[(myWordInt / 10) % 10]!)
                }
                
                if myWordInt % 10 != 0 {
                    newArrayString.append(dict[myWordInt % 10]!)
                }
                
            default:
                break
        }
    }
    
    return newArrayString.joined(separator: " ")
}



changeHard(str: "У меня 505 яблок")


let baseCollection = [1,2,3,4,5,6]
let myLazyCollection = baseCollection.lazy

let col = Array(myLazyCollection.map{$0})
col

