//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Quadruped{
    var type = ""
    var name = ""
    func walk(){
        print("walk")
    }
}

class Dog: Quadruped{
    func bark(){
        print("woof")
    }
    func printName(){
        print(self.name)
    }
}
var myDog = Dog()
myDog.type = "dog"
myDog.walk()
myDog.bark()

var newDog = Dog()
newDog.name = "Dragon Wan Helsing"
newDog.printName()


class NoisyDog: Dog {
    override func bark(){
        for _ in 1...3 {
            super.bark()
        }
    }
}
var badDog = NoisyDog()
badDog.bark()


