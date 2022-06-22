import UIKit
 // 1

enum DayOfWeek: Int {
    case monday = 1
    case tuesday = 2
    case wednesday = 3
    case thurdsday = 4
    case friday = 5
    case saturday = 6
    case sunday = 7
    
    init?(day: String) {
        switch day {
            case "понедельник":
                self = .monday
            case "вторник":
                self = .tuesday
            default:
                return nil
        }
    }
}

var day = DayOfWeek(day: "понедельни")


class Man {
    var name = "Человек"
    deinit {
        print("Объект удален")
    }
}
 
var closure : (() -> Void)?
 
if true {
    let man = Man()
    closure = { [unowned man] in
        print(man.name)
    }
    closure!()
}
print("Программа завершена")

closure == nil
