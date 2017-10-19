//
//  ClosuresEscaping.swift
//  
//
//  Created by Akimov on 9/5/17.
//
//

import Foundation

var competionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(competionHandler:
    @escaping () -> Void){
    competionHandlers.append(competionHandler)
}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure {self.x = 100}
        someFunctionWithNonescapingClosure { x = 200}
    }
}

let instance = SomeClass()
instance.doSomething()

