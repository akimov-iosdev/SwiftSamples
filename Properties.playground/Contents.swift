//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Circle{
    var coordinates: (x: Int, y: Int)
    var radius: Float {
        willSet(newValueOfRadius){
            print("Вместо значения \(self.radius) устанавливается значение \(newValueOfRadius)")
        }
        didSet(oldValueOfRadius){
            print("Вместо значения \(oldValueOfRadius) установлено значение \(self.radius)")
        }
    }
    var perimeter: Float{
        get{
            return 2.0*3.14*self.radius
        }
        set{
            self.radius = newValue / (2*3.14)
        }
//        set(newPerimeter) {
//            self.radius = newPerimeter / (2*3.14)
//        }
    }
}

var myNewCirecle = Circle(coordinates: (0,0), radius: 10)
print(myNewCirecle.perimeter)
myNewCirecle.perimeter = 31.4
print(myNewCirecle.radius)
