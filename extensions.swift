
extension Int {
    
    subscript(digitIndex: Int) -> Int {
        var temp = digitIndex
        var decimalBase = 1
        while temp > 0 {
            decimalBase *= 10
            temp -= 1
        }
        return (self / decimalBase) % 10
    }    
}
print(746381295[0])
print(746381295[4])