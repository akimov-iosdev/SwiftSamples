//: Playground - noun: a place where people can play

import UIKit

func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int]{
    var returnWallet = [Int]()
    for banknot in wallet {
        if closure(banknot){
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
func compare100(banknot: Int) -> Bool{
    return banknot==100
}
func compareMore1000(banknot: Int) -> Bool{
    return banknot>=1000
}
//__________________________________________________________
var wallet = [10,50,100,100,5000,100,50,50,500,100]

handle(wallet: wallet, closure: compare100)
handle(wallet: wallet, closure: compareMore1000)
//__________________________________________________________

handle(wallet: wallet, closure: {(banknot: Int) -> Bool in
    return banknot>=1000
})

handle(wallet: wallet, closure: {(banknot: Int) -> Bool in
    return banknot==100
})

//__________________________________________________________

handle(wallet: wallet, closure: {banknot in
    return banknot>=1000
})

handle(wallet: wallet, closure: {banknot1 in
    return banknot1==100
})
//__________________________________________________________

handle(wallet: wallet, closure: {banknot
    in banknot >= 1000})

handle(wallet: wallet, closure: {banknot
    in banknot==100})

//__________________________________________________________

handle(wallet: wallet,
       closure: {$0>=1000})

handle(wallet: wallet,
       closure: {$0==100})

//__________________________________________________________

handle(wallet: wallet)
    {$0>=1000}
handle(wallet: wallet)
    {$0==100}

//__________________________________________________________

let successbanknot = [100, 500]
handle(wallet: wallet)
{banknot in
    for number in successbanknot{
        if number == banknot{
            return true
        }
    }
    return false
}

//__________________________________________________________

let closure:() -> () = {
    print("Замыкающее выражение")
}
closure()

//__________________________________________________________


var sum: (_ x: Int, _ y: Int) -> Int = {
    return $0 + $1
}
sum(2, 3)

func foo(a: Int, b: Int) -> Int { return b + a }
//https://github.com/apple/swift-evolution/blob/master/proposals/0111-remove-arg-label-type-significance.md

foo(a: 10, b: 34)
sum = foo


sum(10, 34)
//sum()(10, 34)
//__________________________________________________________

var array = [1, 44, 81, 4, 277, 50, 101, 51, 8]

array.sorted(by:)({(first: Int, second: Int) -> Bool in
    return first < second
})

var sortedArray =
    array.sorted(by: {$0 < $1})

sortedArray = array.sorted(by: <)
//__________________________________________________________

func sum2(_ x: Int) -> (Int) -> (Int) {
   // return {y in y + x }
    return {return $0+x}
}



var closure2 = sum2(1)
closure2(12)

sum2(5)(12)
//__________________________________________________________

var a = 1
var b = 2
let closureSum : () -> Int = {
    return a + b
}
closureSum()
a=3
b=4
closureSum()

let closureSum2 : ()->Int = {
    [a, b] in
    return a+b
}
closureSum2()
a=4
b=5
closureSum2()










