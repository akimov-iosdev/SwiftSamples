var  logicVar = true
// проверка значение переменной
if logicVar {
    print("Переменна logicVar истинна")
}
else{
    print("Переменна logicVar ложна")
}
logicVar

var trollsCount: Int? = 8

if trollsCount == nil {
    print("Тролли отсутствуют")
}
else{
    var potCountForTroll = 2
    var allPotsCpunt = potCountForTroll * trollsCount!
}

//______________________________________________________________
var someVal: String! = ""
someVal = nil
if someVal != nil {
    print("someVal not nil")
}
//______________________________________________________________

var monstersCount: Int? = 8
var monsters = 0

if var monstrs = monstersCount {
    print("Всего \(monstrs) монстров")
} else {
    print("Тролли отсутствуют")
}
monsters

//______________________________________________________________
var coinsInNewChest = "140"
var allCoinsCount = 1301

if var coins = Int(coinsInNewChest) {
 type(of:coins)
    allCoinsCount += coins
}else{
    print("У нового дракона отсутствует золото")
}
//______________________________________________________________
// Excercise p.104
typealias Text = String

let firstConst: Text = "123123"
let secondConst: Text = "354"
let thirdConst: Text = "sdf2344"

if var number = Int(firstConst){
    print("value is \(number)")
}
if var number = Int(secondConst){
    print("value is \(number)")
}
if var number = Int(thirdConst){
    print("value is \(number)")
}
else{print("Can't get value")}
//______________________________________________________________

typealias TupleType = (numberOne: Text?, numberTwo: Text?)?

var firstTuple:TupleType = ("190", "67")
var secondTuple:TupleType = ("100", nil)
var thirdTuple:TupleType = ("-65", "70")


if var tempTuple = thirdTuple {//secondTuple, firstTuple
    //type(of:tempTuple)
    if  var firstNum = tempTuple.numberOne, var secondNum = tempTuple.numberTwo
    {
      //type(of:firstNum)
        print("numberOne: \(firstNum), secondNum: \(secondNum)")
    }
    else{
        print("can't get values of tuple elements")
    }
}


