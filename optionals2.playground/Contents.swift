//: Playground - noun: a place where people can play

import UIKit


var myInt: Int? = nil

var myStr: String? = nil
type(of:myStr)
let unpossibleString = "Привет, Дракон!"

let convertUnpossibleString = Int(unpossibleString)

type(of:convertUnpossibleString)

var optionalVar = Optional("stringValue")
optionalVar

optionalVar = nil
optionalVar
type(of:optionalVar)


var trollAge: Int? = 95
//print(trollAge)
trollAge = trollAge! + 10
trollAge

var type2: String
let monsterOneType: String? = "Дракон"
type2 = monsterOneType!
type2

let monsterTwoType: String! = nil//"Тролль"
if monsterTwoType == nil {
    print("is nil")
}
else{
    type2 = monsterTwoType
}
print(type2)



type(of: monsterOneType)
type(of: monsterTwoType)
//____________________________________________________________________________________________________
var someType: String! = nil

someType = monsterOneType
//____________________________________________________________________________________________________
let monsterThirdType: String? = nil
//monsterThirdType!

if let monsterType = monsterThirdType {
    print(monsterType)
}else{
    //print(monsterThirdType!)
}












