//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func myFirstFunc(someValue: Int, anotherValue: String) -> String {
    return String(someValue) + anotherValue
}

func printMessage() -> Void {
    print("printMessage: Сообщение принято")
}
func printMessage1() -> () {
    print("printMessage1: Сообщение принято")
}
func printMessage2() {
    print("printMessage2: Сообщение принято")
}
printMessage2()

//________________________________________________

func printCodeMessage(requestCode: Int) -> (){
    print("Код ответа - \(requestCode)")
}

printCodeMessage(requestCode: 200)

//________________________________________________

func sum(a:Int, b: Int, c:Int) -> (){
    print ("Cумма - \(a+b+c)")
}

sum(a:10, b:51, c:92)

//________________________________________________

func sum(a:Int, _ b: Int, c:Int)-> (){
    print ("Сумма - \(a+b+c)")
}

sum(a:15, 12, c:9)

//________________________________________________

func generateString(code: Int, _ text: String) -> String{
    var mutableText = text
    mutableText += String(code)
    return mutableText
}

generateString(code:200, "Код:")

//________________________________________________

func changeValues(_ a: inout Int, _ b: inout Int) -> () {
    let tmp = a
    a = b
    b = tmp
}
var a = 150, b = 45
changeValues(&a, &b)
a
b
//________________________________________________

func generateString(code: Int, message: String) -> String {
    let returnMessage = "Получено сообщение \"\(message)\"" +
                " с кодом \(code)"
    return returnMessage
}
print(generateString(code: 200, message: "Сервер доступен"))

//________________________________________________

func printRequestString(_ firstParam: Int, codes: Int...)->(){
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print("FirstParam: \(firstParam)")
    print("Получены ответы - \(codesString)")
}
printRequestString(1, codes: 600, 800, 301)
printRequestString(2, codes: 101, 200)

//________________________________________________


var test :Int?
test = 3
print(test!)

let dict = ["key": 5]
let dict2: [String: Any] = ["key": 3]

var myUIView  = UIView()
let dict3: [String: UIView] = ["key": myUIView]

//________________________________________________

func getCodeDescription(code: Int) -> (Int, String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return(code, description)
}
print(getCodeDescription(code: 21))
//________________________________________________

func getCodeDescription2(code: Int) -> (code: Int, descriptiopn: String)
{
    let description:  String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
let request = getCodeDescription2(code: 48)
request.1
request.0

func sumWallet(_ wallet :[Int]) -> Int{
    var sum = 0;
    for oneBanknote in wallet {
        sum += oneBanknote
    }
    return sum
}
var wallet1 = [50, 100, 100, 500, 50, 1000, 5000, 50, 100]
sumWallet(wallet1)

wallet1.append(1000)
sumWallet(wallet1)

func sumWallet(banknotesArray wallet: [Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil    {
        return nil
    }
    for oneBanknote in wallet! {
        sum += oneBanknote
    }
    return sum
}

sumWallet(banknotesArray: nil)
sumWallet()

sumWallet(banknotesArray: wallet1)

//_______________________________________________________________

func generateWallet(walletLength: Int) -> [Int]
{
    //существующие типы банкнот
    let typesOfBanknotes = [50, 100, 500, 1000, 5000]
    
    var wallet: [Int] = []
    
    for _ in 1...walletLength {
        let randomIndex = Int(arc4random_uniform(UInt32(typesOfBanknotes.count-1)))
        wallet.append(typesOfBanknotes[randomIndex])
    }
    return wallet
}

func sumWallet(banknotsFunction wallet: (Int)->([Int])) -> Int
{
    let myWalletArray = wallet(Int(arc4random_uniform(10)))
    var sum: Int = 0
    for oneBanknote in myWalletArray{
        sum += oneBanknote
    }
    return sum
}
sumWallet(banknotsFunction:)(generateWallet)
//_______________________________________________________________

func handle100(wallet: [Int]) -> [Int]{
    var returnWallet = [Int]()
    
    for banknot in wallet {
        if banknot == 100{
            returnWallet.append(banknot)
        }
    }
    
    return returnWallet
}

var wallet = [10,50,100,100,5000,100,50,50,500,100]
handle100(wallet: wallet)
handle100(wallet:)(wallet)
//_______________________________________________________________



















