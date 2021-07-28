class Person {
    var name: String
    var age: Int
    
    init(name n: String, age a: Int = 18) {
        name = n
        age = a
    }
}

var globalPerson: Person?
weak var  weakGlobalPerson: Person?
globalPerson = Person(name: "Vova")

//weakGlobalPerson = globalPerson
globalPerson = nil

doTest()

print("strong link: \(String(describing: globalPerson?.name))")
print("weak ling: \(String(describing: weakGlobalPerson?.name))")

func doTest() {
    print("Start func doTest")
    var localPerson: Person?
    weak var  weakLocalPerson: Person?
    localPerson = Person(name: "Vova")
    weakGlobalPerson = localPerson
    weakLocalPerson = localPerson
    
    localPerson = nil
    print("Local strong link: \(String(describing: localPerson?.name))")
    print("Local weak link: \(String(describing: weakLocalPerson?.name))")
    print("Global weak link: \(String(describing: weakGlobalPerson?.name))")
    print("End func")
}
