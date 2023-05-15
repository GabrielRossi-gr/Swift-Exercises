//: [Anterior](@previous)
//: # Tipos por Valor
//:
//: ## Estruturas
import Foundation

//: Estruturas (*struct*) são tipos similares a classes, com a diferença
//: de serem *tipos de valor* e não *tipos de referência* como estas últimas. Veremos
//: este conceito posteriormente.
//:
//: Para definir uma estrutura utilizamos a palavra-chave **struct**. De forma similar
//: a classes podemos definir atributos (*stored properties*), propriedades e métodos
//: para uma struct.

struct Person {
    
    var name: String = "" {
        willSet (newName) {
            print("Nome mudará para \(newName)")
        }
        didSet {
            print("Nome alterado de \"\(oldValue)\" para \"\(name)\"")
        }
    }
    
    var capitalizedName: String {
        get {
            return name.capitalized
        }
    }
    
    func sayHello() -> String {
        return "Hello, \(name)!"
    }
    
}

var person = Person()

person.name = "sergio"

person.capitalizedName
person.sayHello()

//: [Próximo](@next)

