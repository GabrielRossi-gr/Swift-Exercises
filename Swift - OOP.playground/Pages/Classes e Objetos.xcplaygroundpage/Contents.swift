//: [Anterior](@previous)
//: # Swift - OOP
//:
//: ## Classes e Objetos
import Foundation

//: Classe é uma implementação de um tipo abstrato
//: de dados,um modelo de informação que contém
//: uma estrutura de dados e um conjunto de operações
//: sobre este tipo.
//:
//: Uma classe define as características comuns de um
//: tipo de estrutura de dados. Por exemplo, imaginemos que todo
//: carro possui uma placa. Então a informação placa é uma
//: característica, ou atributo, de todo carro (ou seja, da classe
//: **carro**). Cada carro existente possui a sua placa, ou seja,
//: um valor específico para este atributo. Em Swift os atributos são
//: conhecidos também como *stored properties*.
//:
//: De forma similar todo carro pode ser ligado ou desligado.
//: Estas operações, ou métodos, são comuns a todos os carros. Vamos
//: definir baseado no modelo acima, nossa classe carro em Swift:

//: Esta construção define a classe. As chaves definem os membros
//: (atributos e métodos) desta classe.
class Car {
    
    // Estas construções definem atributos da classe.
    // No caso, estamos definindo valores *default* para
    // estas propriedades
    
    var plaque: String = ""
    var turnedOn = false
    
    // E estas os métodos, que são funções no escopo da classe:
    func turnOn() {
        if turnedOn {
            print("Carro já está ligado!")
        } else {
            print("Carro ligado!")
            turnedOn = true
        }
    }
    
    func turnOff() {
        if !turnedOn {
            print("Carro já está desligado!")
        } else {
            print("Carro desligado!")
            turnedOn = false
        }
    }
}

//: Podemos agora criar instâncias, ou objetos, deste tipo de dados,
//: representando carros específicos:

let car1 = Car()
car1.plaque = "BDV 2399"
let car2 = Car()
car2.plaque = "CDK 8375"

//: É importante notar que cada objeto armazena suas características
//: e estado:

print("Placas \(car1.plaque) \(car2.plaque)")

car1.turnOn()
car1.turnOn()
car2.turnOn()


//: [Próximo](@next)
