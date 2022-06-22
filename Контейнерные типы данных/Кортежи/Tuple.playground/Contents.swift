import UIKit

// Кортежи

var myProgramStatus = (200, "In work", true)

type(of: myProgramStatus)

let myProgramStatusFloat: (Float, String, Bool) = (200.1, "in work", true)

typealias numberType = Int

let numberTurple: (Int, Int, numberType, numberType) = (2,3,4,5)

let (statusCode, statusText, statusConnect) = myProgramStatus

print("Code status: \(statusCode)")

var (status, _, _) = myProgramStatus
status

print("Код ответа: \(myProgramStatus.0)")

myProgramStatus.0 = 300
myProgramStatus

// Homework
// №1

let myName = "Eugene"

var myAge: UInt8 = 20

var myTurple: (name: String, age: UInt8)

myTurple.name = myName
myTurple.age = myAge

// №2

var turpleSecondTask: (Int16, Int16, Int16)

let (firstConst, secondConst) = (1, 2)
firstConst
secondConst

turpleSecondTask.0 = Int16(firstConst)
turpleSecondTask.1 = Int16(secondConst)
turpleSecondTask.2 = Int16(firstConst + secondConst)

// №4

var turpleOne = (first: 1, second: 2)

var turpleTwo = (3, 4)

turpleOne = turpleTwo

turpleOne.first

// №5

var firstVar = 12
var secondVar = 21

(firstVar, secondVar) = (secondVar, firstVar)

firstVar
secondVar

// №6

var turplePreferences: (favoriteFilm: String, favoriteNumber: Int) = ("Spider-man", 31)

let (film, number) = turplePreferences
film
number

typealias Man = (favoriteFilm: String, favoriteNumber: Int)

var turplePreferencesSecond: Man = ("Venom", 5)

turplePreferencesSecond.favoriteFilm

(turplePreferences.favoriteFilm, turplePreferencesSecond.favoriteFilm) =
(turplePreferencesSecond.favoriteFilm, turplePreferences.favoriteFilm)

(turplePreferences.favoriteNumber, turplePreferencesSecond.favoriteNumber) =
(turplePreferencesSecond.favoriteNumber, turplePreferences.favoriteNumber)

turplePreferences.favoriteFilm
turplePreferencesSecond.favoriteFilm

var thirdTurple = (turplePreferences.favoriteNumber, turplePreferencesSecond.favoriteNumber, turplePreferences.1 - turplePreferencesSecond.1)





