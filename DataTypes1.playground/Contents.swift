//: Playground - noun: a place where people can play

import UIKit

//page 52 : Osnovi razrabotki

var firstNum: Int8
var secondNum: UInt8

firstNum = Int8(UInt8.min)
secondNum = UInt8(Int8.max)
print("First number: \(firstNum)")
print("Second number: \(secondNum)")


var starsCount = 30000
var planetsCount:Int = 30
var buf:Int

buf = starsCount
starsCount = planetsCount
planetsCount = buf

print("Stars count: \(starsCount)")
print("Planets count: \(planetsCount)")