//: [Anterior](@previous)
//: # Funcionalidades adicionais de orientação a objetos
//:
//: ## Métodos e propriedades estáticos
import Foundation

//: O conjunto de atributos são definidos no nível da classe,
//: criando um "*template*" que é utilizado por todos os objetos
//: deste tipo. Porém, cada objeto possui seu conjunto de valores
//: para este conjunto de atributos, o que faz com que cada um deles
//: tenha seu próprio estado. Logo estes atributos e métodos são
//: chamados de *métodos de instância* e *atributos de instância*.
//:
//: Existe uma maneira de criar atributos em nível de classe, que
//: podem ser vistas e alteradas por todos os objetos desta. Chamamos
//: estes atributos de *estáticas* ou *atributos de classe*.

class Car {
    
    static var count:Int = 0
    var plaque:String? = ""
    
    init() {
        Car.count += 1
    }
    
    deinit {
        Car.count -= 1
    }
    
    public func currentCarCount() {
        print ("Existem \(Car.count) carros no momento")
    }
}

var car1 = Car()
var car2 = Car()
var car3 = Car()

car1.currentCarCount()

car3 = car1

car1.currentCarCount()

//: Podemos criar também métodos estáticos, que são associados a classe
//: e não a suas instâncias. Estes métodos não podem acessar propriedades
//: de instância.

extension Car {
    static func numberOfCars() -> Int {
        //A linha abaixo gera um erro de compilação, pois
        //um método estático não pode acessar um atributo de
        //instância!
        
        //let x = plaque
        
        return count
    }
}

Car.numberOfCars()

//: - Note: Métodos de classe são úteis para funções auxiliares que
//: não precisam do estado de um objeto para serem executadas.


//: [Próximo](@next)
