print()
class Human {
    var name = "Человек"
    deinit {
        print("Объект удален")
    }
}
var closure: (() -> ())?
//print("Is closure nil : \(closure == nil)")
if true {
    
    let human = Human()
    closure = {        
        [unowned human] in
            print(human.name)
    }
    print("Is closure nil: \(closure == nil)")
    closure!()
}

//print("Is closure nil : \(closure == nil)")

//closure!()
print("Программа завершена")

print()
//print(String(describing: closure!))
print()