
var isDragon = true
let isTroll: Bool = false

if isDragon {
    print("Привет, Дракон!")
} else {
    print("Привет, Тролль!")
}

var someBool = true
!someBool

let firstBool = true, secondBool = true, thirdBool = false
var one = firstBool && secondBool
var two = firstBool && thirdBool
var three = firstBool && secondBool && thirdBool

let constBool1 = true, constBool2 = false, constBool3 = false
var one1 = constBool1 || constBool2
var two1 = constBool1 || constBool3
let three1 = constBool2 || constBool3
