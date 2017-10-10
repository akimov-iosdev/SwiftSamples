//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct PlayerInChess{
    var name: String = ""
    var wins: UInt = 0
}
var oleg = PlayerInChess(name: "Олег", wins: 32)
var leader = PlayerInChess()
oleg.name

var ilya = PlayerInChess(name: "Илья", wins: 32)
ilya.wins
ilya.wins=33
ilya.wins

struct PlayerInCheckers{
    var name: String
    var wins: UInt = 0
    init(name: String){
        self.name = name
    }
}
var ira = PlayerInCheckers(name: "Айра")
//______________________________________________________________
enum Color : String {
    case black = "Черный"
    case white = "Белый"
}
enum ChessFigures : String {
    case pawn = "Пешка"
    case knight = "Конь"
    case bishop = "Слон"
    case rook = "Ладья"
    case queen = "Ферзь"
    case king = "Король"
}

var myChessFigure : ChessFigures = .pawn
myChessFigure.rawValue

struct Chessmen {
    var chessType: ChessFigures
    var color: Color
    var coordinates : (String, UInt)? = nil
    init(type: ChessFigures, color: Color){
        self.chessType = type
        self.color = color
    }
    mutating func setCoordinates(char: String, num: UInt)
    {
      self.coordinates = (char, num)
    }
    mutating func kill()
    {
        coordinates = nil
    }
}
var chess1 = Chessmen(type: .bishop, color: .black)
chess1.coordinates

var whiteBishop = Chessmen(type: .bishop, color: .white)
whiteBishop.setCoordinates(char: "A", num: 1)
whiteBishop.coordinates
whiteBishop.kill()
whiteBishop.coordinates


struct PlayerInChess2 {
    var name: String
    var wins: UInt
    //метод, изменяющий занчение свойств wins
    mutating func addWins(newWins countOfWins: Int){
        self.wins += UInt(countOfWins)
    }
    func description(){
        print("Игрок \(self.name) имеет \(self.wins) побед")
    }
}
var oleg2 = PlayerInChess2(name: "Олег", wins: 15)
oleg2.description()
oleg2.addWins(newWins: 3)
oleg2.wins




