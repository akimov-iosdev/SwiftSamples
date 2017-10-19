//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum DayOfWeek {
    case monday
    case tuesday
    case wadnesday
    case thursday
    case friday
    case saturday
    case sunday
}
enum Chessmen1 {
    case pawn
    case knight
    case bishop
    case rook
    case queen
    case king
}

var chess: Chessmen1

chess = .bishop

enum CurrencyUnit1 {
    case rouble(countries: [String], shotName: String)
    case dollar(countries: [String], shotName: String)
    case euro(countries: [String], shotname: String)
}

var roubleCurrency: CurrencyUnit1
roubleCurrency = .rouble(countries: ["Russia"], shotName: "RUB")



enum CurrencyUnit {
    enum DollarCountries {
        case usa
        case canada
        case australia
    }
    case rouble(countries: [String], shortname: String)
    case dollar(countries: [String], shortname: String, national: DollarCountries)
    case euro(countries: [String], shortname: String)
}

var dollarCurrency: CurrencyUnit
dollarCurrency = .dollar(countries: ["USA"], shortname: "USD", national: .usa)


enum Chessmen {
    enum Color : String {
        case black = "черный"
        case white = "белый"
    }

    case pawn(name: String, Color)
    case knight(name: String, Color)
    case bishop(name: String, Color)
    case rook(name: String, Color)
    case queen(name: String, Color)
    case king(name: String, Color)
}

let chess2: Chessmen

chess2 = .bishop(name: "Слон", .white)
chess2
var chess4 = Chessmen.king(name: "Король", .black)
chess4

enum Smile: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
}

enum Planet: Int {
    case mercury = 1,
    venus,
    earth,
    mars,
    jupiter,
    saturn,
    uranus,
    neptune,
    pluton = 999
}

var iAmHappy = Smile.joy
iAmHappy.rawValue

var myPlanet = Planet.init(rawValue: 3)
var anotherPlanet = Planet.init(rawValue: 11)


var chess3 = chess2

switch chess2 {
    case .pawn:
        print("Пешка")
    case let .bishop (name, color):
        print("\(name) \(String(describing: color)) \(color.rawValue)")
    case .knight:
        print("Конь")
    case .rook:
        print("Ладья")
    case .queen:
        print("Ферзь")
    case .king:
        print("Король")
}

enum Smile2 : String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    var description: String { return self.rawValue }
}

var mySmile: Smile2 = .sorrow
mySmile.description

enum Smile3 : String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    func description () {
        print("Перечисление содержит список используемых смайликов: их названия и графические обозначения")
    }
    func descriptionValue() -> Smile3 {
        return self
    }
    func descriptionRawValue() -> String {
        return self.rawValue
    }
}

var mySmile3 = Smile3.joy
mySmile3.description()
mySmile3.descriptionValue()
mySmile3.descriptionRawValue()








