//: [Anterior](@previous)
//: # Conceitos de Orientação a Protocolos
//:
//: ## Herança de Protocolos
import Foundation

//: Protocolos são tipos em Swift e tem muitas similaridades com classes,
//: com excessão de não possuirem implementação. De forma similar a classes,
//: protocolos podem herdar de outros de forma a compor conjuntos mais complexos
//: de funcionalidades

protocol Walkable {
    func walk()
}

protocol Swimmable {
    func swim()
}


protocol Flyiable {
    func fly()
}

protocol Duckable: Walkable, Swimmable, Flyiable {
    func quack()
}

//: Um protocolo que herda de outros cria uma encadeamento de
//: todos os "comprimissos" que seus protocolos pais exigem. Desta
//: forma, um tipo que se conforma com

struct Duck: Duckable {
    
    func walk() {
        print("I'm walking!")
    }
    
    func swim() {
        print("I'm swimming!")
    }
    
    func fly() {
        print("I'm flying!")
    }
    
    func quack() {
        print("Quack!")
    }
}

//: [Próximo](@next)

