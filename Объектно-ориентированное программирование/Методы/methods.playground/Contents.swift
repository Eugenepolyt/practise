import UIKit

struct ChessPlayer {
    var name: String = "d"
    var victories: UInt = 0
    // инициализатор
    init(name: String){
        self.name = name
    }
    
    init(victori: UInt) {
        victories = victori
    }
}
var playerHelgaPotaki = ChessPlayer(name: "Ольга")
playerHelgaPotaki.victories // 0
// следующий код вызовет ошибку
// структура больше не имеет встроенных инициализаторов
var newPlayer: ChessPlayer



struct Point {
    var x: Int
    var y: Int
    
    func distance(point: Point) -> Double {
        sqrt(Double(pow(number: point.x - self.x) + pow(number: point.y - self.y)))
    }
    
    func pow(number: Int) -> Int {
        number * number
    }
}

var firstPoint = Point(x: 10, y: 20)
var secondPoint = Point(x: 15, y: 22)

firstPoint.distance(point: secondPoint)


// 2

enum Color: String {
    case white = "white"
    case black = "black"
}

enum Type: String {
    case knight = "knight"
    case pawn = "pawn"
    case queen = "queen"
    case king = "king"
    case bishop = "bishop"
    case rook = "rook"
}


var color = Color.white
var type = Type.king

struct Chessman {
    var color: Color
    var type: Type
    var coordinates: (Character, UInt)?
    var symbol: Character
    
    init(color: Color, type: Type) {
        self.color = color
        self.type = type
        self.coordinates = nil
        self.symbol = Character("")
    }
    
    init(color: Color, type: Type, coordinates: (Character, UInt)?, symbol: Character) {
        self.color = color
        self.type = type
        self.coordinates = coordinates
        self.symbol = symbol
    }
    
    mutating func setCoordinates(character: Character, number: UInt) {
        self.coordinates = (character, number)
    }
    
    mutating func kill() {
        self.coordinates = nil
    }
    
    
}


var whiteKing = Chessman(color: color, type: type, coordinates: nil, symbol: Character("\u{2654}"))

whiteKing.setCoordinates(character: Character("D"), number: UInt(5))
whiteKing.coordinates
whiteKing.kill()
whiteKing.coordinates


struct User {
    var name: String
    var secondName: String = ""
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
    
    func getInfo() {
        print("Имя: \(self.name), фамилия: \(self.secondName)")
    }
    
    
}
