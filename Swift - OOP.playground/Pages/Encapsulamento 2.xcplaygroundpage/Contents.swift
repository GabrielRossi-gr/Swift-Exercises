//: [Anterior](@previous)
//: # Swift - OOP
//:
//: ## Encapsulamento

import Foundation

//: Vejamos um exemplo de encapsulamento

class Car {
    
    public var plaque:String = ""
    private var turnedOn = false
    
    public func turnKey() {
        turnedOn = !turnedOn
        print("Carro está \(turnedOn ? "ligado" : "desligado")")
    }
}


let car = Car()

//: Como a propriedade placa é pública, ela pode ser alterada de forma externa a classe

car.plaque = "DPY 7453"

//: Se descomentarmos a linha a seguir recebemos um erro devido ao controle de
//: acesso: "'turnedOn' is inaccessible due to 'private' protection level"

//car.turnedOn = true

//: Porém, a função *turnKey*, que é pública e pertencente a classe **Car** pode
//: alterar seu valor.

car.turnKey()
car.turnKey()

//: - Note: A possibilidade de acessarmos o estado *private* de um objeto apenas através
//: de seus métodos públicos permite termos uma interface clara e bem definida,
//: o que aumenta o controle sobre o código, permite testá-lo melhor e evoluir suas
//: funcionalidades sem impactar outros trechos de código!


//: [Next](@next)

