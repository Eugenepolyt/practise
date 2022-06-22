import UIKit


struct Chessboard {
    
    enum Color {
        case white, black
    }
    
    var symbolToInt: [String:Int] = [:]
    
    init() {
        var char = "A"
        for i in 1...8 {
            symbolToInt[char] = i
            char = nextSymbol(char: char)
        }
    }
    
    subscript(letter: String, number: Int) -> Color? {
        if !("A"..."H").contains(letter) || !(1...8).contains(number) {
            return nil
        }
        
        
        return (symbolToInt[letter]! + number) % 2 == 0 ? Color.white : Color.black
    }
    
    func nextSymbol(char: String) -> String {
        String(UnicodeScalar((UnicodeScalar(char)!.value) + 1)!)
    }
    
}


var board = Chessboard()

board["D", 7]
board["A", 9]

var a = Array(repeating: "\u{23D0}", count: 3)

a.joined(separator: "")
