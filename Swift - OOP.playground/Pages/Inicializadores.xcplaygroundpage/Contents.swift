//: [Anterior](@previous)
//: # Swift - OOP
//:
//: ## Inicializadores
import Foundation

//: Inicializadores são métodos chamados para criar
//: um objeto de dada classe.

class Car {
    init () {
        print("Um carro foi criado!! 🚗")
    }
}

//: Este método é chamado quando inicializamos um objeto
//: desta classe.
let car1 = Car()

//: O inicializador é similar a outros métodos, logo ele aceita
//: parâmetros (nomeados ou não) que em geral são utilizados para
//: definir o estado do objeto. Ele pode ser sobrescrito para
//: diferentes parâmetros:

class Oven {
    
    var temperature: Int
    
    init() {
        temperature = 30
    }
    
    init (increaseTemperatureIn: Int) {
        temperature = 30 + increaseTemperatureIn
    }
    
    init(_ temperature: Int) {
        self.temperature = temperature
    }
}

let oven1 = Oven()
let oven2 = Oven(increaseTemperatureIn: 100)
let oven3 = Oven(180)

print()
print("Temperaturas dos fornos é:")
print("Forno 1 = \(oven1.temperature)")
print("Forno 2 = \(oven2.temperature)")
print("Forno 3 = \(oven3.temperature)")


//: [Próximo](@next)
