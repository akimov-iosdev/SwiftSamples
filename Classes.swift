import Glibc

class AboutMan{
    let firstName = "Егор"
    var secondName = "Петров"
    var wholeName: String {return "\(self.firstName) \(self.secondName)"}
}
var me = AboutMan()

//me.wholeName = "s"
print("\n")
print(me.wholeName)
print("\n")