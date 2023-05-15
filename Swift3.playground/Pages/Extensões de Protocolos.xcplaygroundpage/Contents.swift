//: [Anterior](@previous)
//: # Tipos complexos de dados
//:
//: ## Extensões de Protocolos
import Foundation

//: Swift permite definir uma implementação padrão para métodos de protocolos.
//: Com isso, quando um tipo se conforma ao protocolo ele pode ter sua própria
//: implementação do método ou utilizar a implementação padrão carregada pelo protocolo.
//: Para criar implementações de protocolos criamos uma extensão deste, de modo similar
//: ao que é feito com outros tipos:

protocol AProtocol {
    func aMethod() -> String
}

extension AProtocol {
    func aMethod() -> String {
        return "Implementação padrão"
    }
}

struct Example1: AProtocol {
    
}

struct Example2: AProtocol {
    func aMethod() -> String {
        return "Implementação customizada"
    }
}


let example1 = Example1()
let example2 = Example2()

example1.aMethod()
example2.aMethod()

//: Podemos implementar métodos na extensão de um protocolo que
//: não estão na sua declaração. Neste caso porém a implementação
//: não sobrescreverá o método da classe pai.

protocol BaseProtocol {
    func function1()
}


extension BaseProtocol {
    
    func function1() {
        print("Function 1 - Base")
    }
    
    func function2() {
        print("Function 2 - Base")
    }
    
    func function3() {
        print("Function 3 - Base")
    }
}

protocol ChildProtocol: BaseProtocol {
    
}

extension ChildProtocol {
    
    func function1() {
        print("Function 2 - Child")
    }
    
    func function2() {
        print("Function 2 - Child")
    }
}


class BaseClass : BaseProtocol {
    
}

class ChildClass: ChildProtocol {
    
}

let baseObject = BaseClass()

baseObject.function1()
baseObject.function2()


//: Nos casos abaixo, se criarmos um objeto do tipo *ChildProtocol*
//: ele utilizará o método **function1** do protocolo filho, pois este
//: sobrescreve um método existente na declaração do protocolo. Já
//: no caso de **function2** ele utilizará a função do protocolo filho se
//: o tipo da variável/constante for **ChildProtocol**, mas usará o método do
//: protocolo pai no caso do tipo ser **BaseProtocol**.

let childObject1: ChildProtocol = ChildClass()

childObject1.function1()
childObject1.function2()
childObject1.function3()

let childObject2: BaseProtocol = ChildClass()

childObject2.function1()
childObject2.function2()
childObject2.function3()

//: [Próximo](@next)

