//: Playground - noun: a place where people can play

import UIKit

var competionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(competionHandler:
    @escaping () -> Void){
    competionHandlers.append(competionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    //competionHandlers.append(closure)
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithNonescapingClosure { x = 200}
        someFunctionWithEscapingClosure {
            print(self.x)
            self.x = 100}
        
    }
}

let instance = SomeClass()
instance.doSomething()

print(instance.x)

competionHandlers.count


competionHandlers.first?()
print(instance.x)