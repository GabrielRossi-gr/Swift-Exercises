//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Comandos de *Loop*
import Foundation


let animals = ["cachorro", "gato", "urso", "panda", "elefante", "porco"]

//: O outro comando de *loop* é o *for-in* que percorre um conjunto
//: de informações, seja um *range* de valores (definido com ... ou ..<) ou
//: um *array*:

for i in 1...5 {
    print("Conjunto fechado - \(i)")
}

for i in 1..<5 {
    print("Conjunto aberto - \(i)")
}

for animal in animals {
    print("Elementos do array - \(animal)")
}

//: [Próximo](@next)

