class Human {
    let name: String
    var child = [Human?]()
    weak var father: Human?
    weak var mother: Human?
    
    init(name: String) {
        self.name = name
    }

    deinit {
        print(self.name+" - удален")
    }    
}

if 1==1 {
    let Kirill = Human(name: "Кирилл")
    let Olga = Human(name: "Ольга")
    let Alex = Human(name: "Алексей")

    Kirill.father = Alex
    Kirill.mother = Olga

    Olga.child.append(Kirill)
    Alex.child.append(Kirill)
}