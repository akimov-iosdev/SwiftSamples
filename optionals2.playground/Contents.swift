//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


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
trollAge = trollAge! + 10
trollAge

var type: String
let monsterOneType: String? = "Дракон"
type = monsterOneType!
type

let monsterTwoType: String! = nil//"Тролль"

if monsterTwoType == nil {
    
}
else{
    type = monsterTwoType
}
print(type)

type(of:monsterOneType)
type(of:monsterTwoType)




