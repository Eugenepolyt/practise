import UIKit

// №1

class Artist {
    var firstName: String
    var secondName: String
    
    init(firstName: String, secondName: String) {
        self.firstName = firstName
        self.secondName = secondName
    }
}


class Painter: Artist {
    
    override var firstName: String {
        get {
            return "kek"
        }
        set {
            
        }
    }
    
    override init(firstName: String, secondName: String) {
        super.init(firstName: firstName, secondName: secondName)
        self.firstName = "lyl"
    }
    
}



var painter = Painter(firstName: "kekfdsa", secondName: "lul")
painter.firstName
painter.secondName
painter.firstName = "Sasha"
painter.firstName
painter.firstName

