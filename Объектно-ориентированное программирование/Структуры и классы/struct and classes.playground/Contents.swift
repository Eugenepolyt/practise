import UIKit


// №1

struct DayOfBirth {
    var day: Int
    var month: Int
    var year: Int

    func dateToString() -> String {
        "\(day):\(month):\(year)"
    }
}


struct Student {
    var name: String
    var secondName: String
    var dateOfBirth: DayOfBirth
    var averageMark: Double

    func studentToString() -> String {
        "Name: \(self.name)"
        + " SecondName: \(self.secondName)"
        + " Day of bith: \(self.dateOfBirth.dateToString())"
        + " Average mark: \(self.averageMark)"
    }


}


var student1 = Student(name: "Oleg", secondName: "Borisov", dateOfBirth: DayOfBirth(day: 1, month: 1, year: 2001), averageMark: 4.7)
var student2 = Student(name: "Eugene", secondName: "Bedoev", dateOfBirth: DayOfBirth(day: 2, month: 11, year: 2005), averageMark: 3.2)
var student3 = Student(name: "Kate", secondName: "Pimenova", dateOfBirth: DayOfBirth(day: 5, month: 6, year: 2003), averageMark: 4.2)

var student4 = Student(name: "Andrei", secondName: "Borisov", dateOfBirth: DayOfBirth(day: 5, month: 6, year: 2003), averageMark: 4.2)

var journal = [student1, student2, student3, student4]

// №2

func printStudents(journal: [Student]) {
    for i in journal.indices {
        print("\(i + 1). \(journal[i].studentToString())")
    }
    print()
}

printStudents(journal: journal)


// №3

journal = journal.sorted {
    $0.averageMark > $1.averageMark
}

printStudents(journal: journal)

// №4

journal = journal.sorted { first, second in
    if first.secondName < second.secondName {
        return true
    } else if first.secondName > second.secondName {
        return false
    } else {
        return first.name < second.name
    }

}

printStudents(journal: journal)

// №5

var newJouranl = journal

for i in newJouranl.indices {
    newJouranl[i].name = "\(i)"
}

printStudents(journal: journal)
printStudents(journal: newJouranl)

// №6

struct Coordinates {
    var column: String
    var row: Int
}

class Chessman {
    
    enum ColorFigure {
        case white, black
    }
    
    enum FigureName {
        case king
        case queen
        case bishop
        case knight
        case rook
        case pawn
    }
    
    var figureName: FigureName
    var figureColor: ColorFigure
    var coordinates: Coordinates
    var figureSymbol: String
    
    
    init(figure: FigureName, color: ColorFigure, coord: Coordinates, symbol: String) {
        figureName = figure
        figureColor = color
        coordinates = coord
        figureSymbol = symbol
    }
    
    // func to like "A" + 1 = "B"
    func uniPlus(letter: String) -> String {
        String(UnicodeScalar(UnicodeScalar(letter)!.value + 1)!)
    }
    
    // func to like "B" - 1 = "A"
    func uniMinus(letter: String) -> String {
        String(UnicodeScalar(UnicodeScalar(letter)!.value + 1)!)
    }
    
    func canMove() -> (move: [Coordinates], beat: [Coordinates]) {
        
        var move = [Coordinates]()
        var beat = [Coordinates]()
        
        switch (figureName, figureColor) {
                
            case (.pawn, .white):
                move.append(Coordinates(column: coordinates.column, row: coordinates.row + 1))
                if coordinates.row == 2 {
                    move.append(Coordinates(column: coordinates.column, row: coordinates.row + 2))
                }
                beat.append(Coordinates(column: uniPlus(letter: coordinates.column), row: coordinates.row + 1))
                beat.append(Coordinates(column: uniMinus(letter: coordinates.column), row: coordinates.row + 1))

            case (.pawn, .black):
                move.append(Coordinates(column: coordinates.column, row: coordinates.row - 1))
                if coordinates.row == 7 {
                    move.append(Coordinates(column: coordinates.column, row: coordinates.row - 2))
                }
                beat.append(Coordinates(column: uniPlus(letter: coordinates.column), row: coordinates.row - 1))
                beat.append(Coordinates(column: uniMinus(letter: coordinates.column), row: coordinates.row - 1))
                
            default: break
        }
        
        return (move, beat)
    }
    
}


class GameDesk {
    var desk: [Int:[String:Chessman]] = [:]
    let letters = ["A", "B", "C", "D", "E", "F", "G", "H"]
    
    init() {
        for i in 1...8 {
            desk[i] = [:]
        }
    }
    
    private func addFigure(figure: Chessman) {
        desk[figure.coordinates.row]![figure.coordinates.column] = figure
    }
    
    private func removeDesk(coord: Coordinates) {
        assert((1...8).contains(coord.row) && ("A"..."H").contains(coord.column), "Wrong coords delete")
        desk[coord.row]![coord.column] = nil
    }
    
    func startGame() {
        
        for i in letters {
            
            addFigure(figure: Chessman(figure: .pawn, color: .white, coord: Coordinates(column: i, row: 2), symbol: "\u{265F}"))
            addFigure(figure: Chessman(figure: .pawn, color: .black, coord: Coordinates(column: i, row: 7), symbol: "\u{2659}"))
            
            switch i {
                case "A":
                    addFigure(figure: Chessman(figure: .rook, color: .white, coord: Coordinates(column: i, row: 1), symbol: "\u{265C}"))
                    addFigure(figure: Chessman(figure: .rook, color: .black, coord: Coordinates(column: i, row: 8), symbol: "\u{2656}"))
                case "B":
                    addFigure(figure: Chessman(figure: .knight, color: .white, coord: Coordinates(column: i, row: 1), symbol: "\u{265E}"))
                    addFigure(figure: Chessman(figure: .knight, color: .black, coord: Coordinates(column: i, row: 8), symbol: "\u{2658}"))
                case "C":
                    addFigure(figure: Chessman(figure: .bishop, color: .white, coord: Coordinates(column: i, row: 1), symbol: "\u{265D}"))
                    addFigure(figure: Chessman(figure: .bishop, color: .black, coord: Coordinates(column: i, row: 8), symbol: "\u{2657}"))
                case "D":
                    addFigure(figure: Chessman(figure: .king, color: .white, coord: Coordinates(column: i, row: 1), symbol: "\u{265A}"))
                    addFigure(figure: Chessman(figure: .king, color: .black, coord: Coordinates(column: i, row: 8), symbol: "\u{2654}"))
                case "E":
                    addFigure(figure: Chessman(figure: .queen, color: .white, coord: Coordinates(column: i, row: 1), symbol: "\u{265B}"))
                    addFigure(figure: Chessman(figure: .queen, color: .black, coord: Coordinates(column: i, row: 8), symbol: "\u{2655}"))
                case "F":
                    addFigure(figure: Chessman(figure: .bishop, color: .white, coord: Coordinates(column: i, row: 1), symbol: "\u{265D}"))
                    addFigure(figure: Chessman(figure: .bishop, color: .black, coord: Coordinates(column: i, row: 8), symbol: "\u{2657}"))
                case "G":
                    addFigure(figure: Chessman(figure: .knight, color: .white, coord: Coordinates(column: i, row: 1), symbol: "\u{265E}"))
                    addFigure(figure: Chessman(figure: .knight, color: .black, coord: Coordinates(column: i, row: 8), symbol: "\u{2658}"))
                case "H":
                    addFigure(figure: Chessman(figure: .rook, color: .white, coord: Coordinates(column: i, row: 1), symbol: "\u{265C}"))
                    addFigure(figure: Chessman(figure: .rook, color: .black, coord: Coordinates(column: i, row: 8), symbol: "\u{2656}"))
                default: break
            }
        }
    }
    
    private func containCoord(array: [Coordinates], checkCoord: Coordinates) -> Bool {
        for coord in array {
            if coord.column == checkCoord.column && coord.row == checkCoord.row {
                return true
            }
        }
        return false
    }
    
    func getFigure(coord: Coordinates) -> Chessman? {
        if !(1...8).contains(coord.row) || !("A"..."H").contains(coord.column) {
            return nil
        }
        return desk[coord.row]![coord.column]
    }
    
    func move(pastCoord past: Coordinates, newCoord new: Coordinates) {
        
        
        guard let figure = getFigure(coord: past) else {
            print("There is no figure on this coord")
            return
        }
        
        func replace(past: Coordinates, new: Coordinates, figure: Chessman) {
            removeDesk(coord: past)
            figure.coordinates = new
            addFigure(figure: figure)
        }
        
        let moveBeatArray = figure.canMove()
        
        if containCoord(array: moveBeatArray.move, checkCoord: new) {
            if let _ = getFigure(coord: new) {
                print("You cant move to this coord")
            } else {
                replace(past: past, new: new, figure: figure)
            }
        }
        
        if containCoord(array: moveBeatArray.beat, checkCoord: new) {
            if let _ = getFigure(coord: new) {
                replace(past: past, new: new, figure: figure)
                print("You eat figure")
            } else {
                print("You cant move to this coord, there is no figure for beat")
            }
        }
        
    }
    
    
    func printDesk() {
        print ("  A B C D E F G H")
        
        for row in stride(from: 8, through: 1, by: -1) {
            print(row, terminator: " ")
            for column in letters.indices {
                if let figure = desk[row]![letters[column]] {
                    print("\(figure.figureSymbol)", terminator: " ")
                } else {
                    (row + column + 1) % 2 == 0 ? print("\u{25AA}", terminator: " ") : print("\u{25AB}", terminator: " ")
                }
                
                if letters[column] == "H" {
                    print(row)
                }
            }
        }
        
        print ("  A B C D E F G H")
        print()
    }
}

var gameDesk = GameDesk()

gameDesk.startGame()
gameDesk.printDesk()

gameDesk.move(pastCoord: Coordinates(column: "B", row: 2), newCoord: Coordinates(column: "B", row: 3))
gameDesk.printDesk()
gameDesk.move(pastCoord: Coordinates(column: "A", row: 7), newCoord: Coordinates(column: "A", row: 5))
gameDesk.printDesk()
gameDesk.move(pastCoord: Coordinates(column: "A", row: 7), newCoord: Coordinates(column: "A", row: 5))
gameDesk.move(pastCoord: Coordinates(column: "A", row: 5), newCoord: Coordinates(column: "B", row: 4))
gameDesk.move(pastCoord: Coordinates(column: "A", row: 5), newCoord: Coordinates(column: "A", row: 4))
gameDesk.printDesk()
gameDesk.move(pastCoord: Coordinates(column: "A", row: 4), newCoord: Coordinates(column: "B", row: 3))
gameDesk.printDesk()


