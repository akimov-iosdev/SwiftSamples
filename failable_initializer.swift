class Rectangle {
    var height: Int
    var weight: Int
    init?(height h: Int, weight w: Int)
    {
        self.height = h
        self.weight = w
        if !(h > 0 && w > 0) {
            return nil
        }
    }
}

var rectangle = Rectangle(height: 56, weight: -32)
print("Rectangle reference is \(String(describing: rectangle))")

var rectangle2 = Rectangle(height: 56, weight: 32)!

print("Rectangle reference is \(String(describing: rectangle2))")

print(" ")

enum TemperatureUint: Character {
    case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}

let fahrenheit = TemperatureUint.Kelvin

//print(String(describing: fahrenheit))
print(type(of: fahrenheit))
print(fahrenheit.self)

let fahrenheitUnit = TemperatureUint(rawValue: "F")



print(fahrenheitUnit!.hashValue)
