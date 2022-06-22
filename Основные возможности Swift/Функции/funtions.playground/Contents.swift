import UIKit

// homework 1

func boolToString(bool: Bool) -> String {
    String(bool)
}

var a = boolToString(bool: true)

// 2

func sumOfPositive(array: [Int]) -> Int {
    var sum = 0
    
    for number in array {
        if number > 0 {
            sum += number
        }
    }
    
    return sum
}

sumOfPositive(array: [1,-2,3,4,-5])

// 3

func mulOfAll(array: [Int]) -> Int {
    if array.count == 0 {
        return 0
    }
    
    var mul = 1
    
    for number in array {
        mul *= number
    }
    
    return mul
}

mulOfAll(array: [1,2,3,4])

// 4

func mul(a: Int, b: Int) -> Int {
    a * b
}

func mul(a: Double, b: Double) -> Double {
    a * b
}




type(of: mul(a : 1.0, b: 2.0))

type(of: mul(a : 1, b: 2))

// 5

func inverse(num: Int) -> Int {
    -num
}

inverse(num: -1)
inverse(num: 1)

// 6

func arenda(days: Int) -> Int {
    var result = days * 850
    if days > 3 && days < 7 {
        result -= 550
    } else if days > 7 {
        result -= 1620
        print("here")
    }
    
    return result
}

arenda(days: 9)

// 7

func containInArray(array: [Int], number: Int) -> Bool {
    array.contains(number)
}

containInArray(array: [1,2,3], number: 2)

// 8

func repeatString(stirng: String, count: Int) -> String {
    if count <= 0 {
        return ""
    }
    var result = ""
    for _ in 1...count {
        result += stirng
    }
    return result
}

repeatString(stirng: "hey", count: 2)

// 9

func task(h: Int, n: Int, m: Int, l: Double) -> Int {
    if h <= 0 || n < 2 || m < 1 || l >= 1.0 {
        return 0
    }
    
    if m >= n {
        return 0
    }
    let mother = m * h
    let son = n * h
    var height = Double(son)
    var counter = 1
    var coeff = height * l
    
    while coeff >= Double(mother) {
        counter += 2
        height = coeff
        coeff = height * l
    }
    
    return counter
}

//Обратите внимание, что несмотря на то, что в функцию передается параметр h (высота одного этажа), он не используется при вычислениях. Мы вполне можем обойтись и без него, нам достаточно лишь знать этажи и умножать коэфициент на них. Очень хорошо, если вы заметили это.
func ball(height h: Float, boyFloor N: Int, motherFloor M: Int, ratio L: Float) -> Int {
    var currentFloor = Float(N) * L
    var count = 1
    while currentFloor >= Float(M) {
        currentFloor *= L
        count += 2
    }
    return count
}
ball(height: 10, boyFloor: 2, motherFloor: 1, ratio: 0.75)

task(h: 10, n: 2, m: 1, l: 0.75)


// 11

func symbols(str1: String, str2: String) -> Bool {
    Set(str2).symmetricDifference(Set(str2)).isEmpty && str2.count == str1.count
}

symbols(str1: "", str2: "")

// 12

func primeNumbers(range: ClosedRange<Int>) -> [Int] {
    var result = [Int]()
    
loop: for number in range {
    
    if [0,1].contains(number) {
        continue
    }
    
    
    for i in 2..<number {
        if number % i == 0 {
            continue loop
        }
    }
    result.append(number)
    }
    return result
}

primeNumbers(range: 0...30)

// 13

func something(n: Int, number: Int) -> Int {
    
    var result = number
    
    for _ in 1..<n {
        result *= number
        print(result)
    }
    
    return result
}

something(n: 6, number: 2)





