//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var numInt = 19

var numDouble = 3.13

var resD = Double(numInt) * numDouble
var resI = numInt * Int(numDouble)


let firstConst, secondConst1, thirdConst1: Int
let secondConst: Float, thirdConst: Double

firstConst = 18; secondConst = 16.4; thirdConst = 5.7

var resultFloatSum = Float(firstConst) + Float(secondConst) + Float(thirdConst)

var resultIntMultiply = Int(Double(firstConst) * Double(secondConst) * thirdConst)

var resRemainingDouble = Double(secondConst)
    .truncatingRemainder(dividingBy:thirdConst)

//resRemainingDouble = Double(secondConst) % thirdConst

print("Float(\(firstConst)) + Float(\(secondConst)) + Float(\(thirdConst)) = \(resultFloatSum)")

print("Int(Double(\(firstConst)) * Double(\(secondConst)) * \(thirdConst)) = \(resultIntMultiply)")

print("Double(\(secondConst)) % \(thirdConst) = \(resRemainingDouble)")

12_000_000 / 60 / 24 % 365