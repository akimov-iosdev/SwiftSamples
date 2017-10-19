//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



class Chessman {
    enum ChessmanType {
        case king
        case castle
        case bishop
        case pawn
        case knight
        case queen
    }
    enum ChessmanColor {
        case black
        case white
    }
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure: Character) {
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
    init(type: ChessmanType, color:ChessmanColor,figure:Character,coordinates:(String, Int)){
        self.type = type
        self.color = color
        self.figureSymbol = figure
        self.setCoordinates(char: coordinates.0, num: coordinates.1)
    }
    //метод установки координат
    func setCoordinates(char c:String, num n:Int) {
        self.coordinates = (c,n)
    }
    //метод, убивающий фигуру
    func kill(){
        self.coordinates = nil
    }
}
var kingWhite = Chessman(type: .king, color: .white, figure: "♔")
kingWhite.setCoordinates(char: "E", num: 1)

var queenBlack = Chessman(type: .queen, color: .black, figure: "♛", coordinates: ("A", 6))


var linkToEnumType =  Chessman.ChessmanType.bishop



class AboutMan {
    let firstName = "Виктор"
    
    var secondName = "Гюго"
    
    let testConst: String
    
    //lazy var wholeName: String = self.generateWholeName()
    var wholeName: String {return "\(self.firstName) \(self.secondName)"}
    lazy var instance : AboutMan = self
    
    var thisInstance : AboutMan { return  self }
    
    init(initConstValue: String){
        self.testConst = initConstValue
        //self.instance = self
    }
    
    func some() -> AboutMan {
        return self
    }
    
    func generateWholeName() -> String {
        return "\(self.firstName) \(self.secondName)"
    }
}
var author = AboutMan(initConstValue: "df")
author.wholeName
author.secondName = "Иванов"
author.wholeName

author.thisInstance.secondName
author.instance.secondName

let name: String

//print(name)
name = "sdf"
print(name)


