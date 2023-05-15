//: [Anterior](@previous)
//: # Swift - OOP
//:
//: ## Herança e polimorfismo
import Foundation

//: Herança é o conceito de orientação a objetos que define
//: a especialização de um classe, permitindo que tenhamos
//: tipos de dados mais genéricos e mais específicos. Por exemplo, poderíamos
//: em um sistema ter a classe "Animal de Estimação" e especializá-la para
//: "Cão", "Gato" etc.
//:
//: A herança é uma relação do tipo "é um". Desta forma, a classe filha tem os
//: atributos de sua classe pai e apresenta seus comportamentos (métodos). Além disso
//: ela pode possuir características e métodos específicos, ou redefinir comportamentos
//: da classe pai ao redefinir seus métodos (*override*).
//:
//: Swift não possui uma classe base da qual todas as outras herdam. Sendo assim, ao definir
//: uma classe que não herda de outra ela se torna a classe base de todas as suas classes filhas,
//: de forma similar ao que ocorre em C++.
//:
//: Vejamos um exemplo de herança:

class ClassA {
    
    func aPrivateMethod() {
        print ("Metodo privado da classe A")
    }
    
    public func publicMethod() {
        print("Metodo publico da classe A")
        aPrivateMethod()
    }
}

//: A classe ClassB herda de ClassA, contendo todas as suas características. Caso desejemos
//: sobrescrever algum método da classe pai temos que explicitar isto com a palavra-chave
//: *override*:
class ClassB: ClassA {
    
    //Este método sobrescreve o comportamento do método da classe pai
    override func aPrivateMethod() {
        print("Método privado da classe B")
    }
    
    //Este método representa um comportamento que existe apenas na classe filha!
    func aNewMethod() {
        print("Método público específico da classe B")
    }
}

//: Vejamos o que ocorre se criarmos um objeto da classe A:
let obj1: ClassA = ClassA()
obj1.publicMethod()

//: Os métodos da classe A são chamados, como esperado. Caso façamos o mesmo
//: com um objeto da classe B, o método sobrescrito é utilizado:
let obj2: ClassA = ClassB()
obj2.publicMethod()

//: Como definimos a variável como sendo do tipo **ClassA** apenas os métodos e
//: propriedades desta classe são acessíveis. Portanto, se tentarmos utilizar algo
//: específico da classe B teremos um erro (o que ocorrerá se a linha abaixo for
//: descomentada):
//obj2.aNewMethod()

//:Porém podemos fazer isto em uma variável tipada como sendo da classe **ClassB**:
let obj3: ClassB = ClassB()
obj3.aNewMethod()


//: [Próximo](@next)

