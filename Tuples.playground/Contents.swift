//: Playground - noun: a place where people can play
//_________________________________________________________
let myProgramStatus:(Int, String, Bool) = (200, "In Work", true)

type(of:myProgramStatus)

var (statusCode, statusText, stausConnect) = myProgramStatus
print("Код ответа - \(statusCode)\n",
      "Текст ответа - \(statusText)\n",
      "Связь с сервером - \(stausConnect)")

//_________________________________________________________
var (myName, myAge) = ("Тролль", 140)
print("Меня зовут \(myName), и мне \(myAge) лет")
//_________________________________________________________
let myProgramStatus1: (Int, String, Bool) = (404, "Error", true)
//myProgramStatus1.0 = 3!!!!!!!!!
var (statusCode1, _, _) = myProgramStatus1
print("\(statusCode1)")
//_________________________________________________________
var myProgramStatus2: (Int, String, Bool) = (200, "In Work", true)

print("Код ответа - \(myProgramStatus2.0)\n",
    "Текст ответа - \(myProgramStatus2.1)\n",
    "Связь с сервером - \(myProgramStatus2.2)")
//_________________________________________________________
var myProgramStatus3 = (statusCode:200, statusText:"In Work", statusConnect:true)

print("\nКод ответа - \(myProgramStatus3.statusCode)\n",
    "Текст ответа - \(myProgramStatus3.statusText)\n",
    "Связь с сервером - \(myProgramStatus3.2)")

//myProgramStatus3 = myProgramStatus1

myProgramStatus3.statusCode = 500
//_________________________________________________________
let myProgramStatus4: (statusCode: Int, stautsText:String, statusConnect:Bool) = (200,"In Work", true)
myProgramStatus4.statusCode
var myNewProgramStatus = (statusCode:404, statusText: "Error", statusConnect:true)
myNewProgramStatus.statusText
//_________________________________________________________
var myFirstTuple: (Int, String)
var mySecondTuple = (100, "Код")
myFirstTuple = mySecondTuple
var test = myFirstTuple
//_________________________________________________________
var someTuple = (200, true)
someTuple.0 = 404
someTuple.1 = false
someTuple
//_________________________________________________________
(1, "alpha") < (2, "beta")
(4, "beta") < (4, "gamma")
(3.14, "pi") == (3.14, "pi")
//_________________________________________________________
var myFavoriteThings: (film: String, number:Double, dish: String) = ("Terminator", 10.0, "meat")


let (film, number, dish) = myFavoriteThings

var yourFavoriteThings = ("Armageddon", 7.0, "apple")

var temp = myFavoriteThings
myFavoriteThings = yourFavoriteThings
yourFavoriteThings = temp

print(yourFavoriteThings)
print(myFavoriteThings)

var resultTuple = (myFavoriteThings.number, yourFavoriteThings.1, myFavoriteThings.number - yourFavoriteThings.1)

type(of:resultTuple)
//_________________________________________________________



