class Quadruped {
    var type = ""
    var name = ""
    init(){
        print("Quadruped init called!!")
    }
    func walk(){
        print("walk")
    }
}
class Dog : Quadruped {
    let dogProperty: String

    override init(){
        self.dogProperty = "sdf"
        super.init()
        self.type = "dog"
        print("Dog overriden init called!!")
    }

    init(dogName: String) { // собственный назначенный инициализатор
        self.dogProperty = "sdf"

        super.init()
       
        self.name = dogName
        self.type = "dog"
        print("Dog init called!!")
    }

    convenience init(text: String){
        self.init(dogName: text)
       // self.init()
        print(text)
    }

    func bark(){
        print("woof")
    }

    func printName(){
        print(self.name)
    }
}
class NoisyDog : Dog {
    override func bark(){
        for _ in 1...3 {
            super.bark()
        }
    }
}
//var dog = Dog()
//dog.bark()

var myDog = Dog(text: "Экземпляр класса Dog создан")


//var badDog = NoisyDog()
//badDog.bark()