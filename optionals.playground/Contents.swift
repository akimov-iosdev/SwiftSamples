//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myInt: Int? = nil

var myStr: String = "nil"
type(of: myStr)
//_________________________________________________________________________________
let unpossibleString = "Привет, Дракон!"

let convertUnpossibleString = Int(unpossibleString)

type(of:convertUnpossibleString)
//_________________________________________________________________________________
var optionalVar = Optional("stringValue")
optionalVar

optionalVar = nil
optionalVar
type(of:optionalVar)

//_________________________________________________________________________________

var trollAge: Int? = 95
var anotherAge: Int?
anotherAge = trollAge! + 10//! + 10
print(anotherAge!)
//_________________________________________________________________________________

var type1: String
let monsterOneType: String? = "Дракон"
type1 = monsterOneType!
type1

let monsterTwoType: String! = nil//"Тролль"

if monsterTwoType == nil {
    
}
else{
    type1 = monsterTwoType
}
print(type1)

type(of:monsterOneType)
type(of:monsterTwoType)

