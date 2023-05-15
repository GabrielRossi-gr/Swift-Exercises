//: [Anterior](@previous)
//: # Funcionalidades adicionais de orientação a objetos
//:
//: ## Propriedades
import Foundation

//: Swift permite proteger o acesso a atributos com métodos para
//: atribuir um valor (*setter*) e obtê-lo (*getter*). Desta forma
//: temos um crontrole maior sobre a maneira como as informações de
//: estado de um objeto são utilizadas. Atributos acessados desta forma
//: são conhecidos como propriedades (*computed properties*)

class Example1 {
    
    private var x:Int = 0
    
    public var y:Int {
        get {
            print("Lendo valor!")
            return self.x
        }
        
        set {
            //O valor que será definido para a propriedade
            //é armazenado em newValue
            print("Definindo valor \(newValue)")
            self.x = newValue
        }
    }
}

let sampleObject = Example1()

//: Como o atributo x é privado ele não pode ser acessado externamente
//: a classe
//obj.x = 4

//: A propriedade y, pode ser acessada tanto para leitura quanto
//: para escrita. Podemos com isso criar códigos que interceptem
//: os acessos a ela permitindo um nível de controle maior.
sampleObject.y = 4

let value = sampleObject.y

//: - Note: Podemos criar propriedades apenas com o método **get**, gerando
//: um propriedade apenas para leitura (*read-only computed property*).

//: [Próximo](@next)
