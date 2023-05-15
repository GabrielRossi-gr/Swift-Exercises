//: [Anterior](@previous)
//: # Swift - OOP
//:
//: ## Protocolos
import Foundation

//: Protocolos são definições de conjuntos de métodos e/ou propriedades.
//: Quando um tipo implementa o protocolo ele assume a responsabilidade
//: de implementar as definições exigidas por este. Logo, podemos ver um
//: protocolo como um contrato que garante que as suas definições são
//: disponibilizadas por um tipo que se conforma a ela.
//:
//: Por exemplo, caso tenhamos um protocolo, definido pela palavra
//: chave *protocol* como abaixo:

protocol ProtocolExample {
    func add(a:Int, b:Int) -> Int
}

//: Uma classe que se conforma a este protocolo deve implementar o método
//: *add*

class Example: ProtocolExample {
    
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
}

//: Caso os métodos não sejam implementados, um erro de compilação indica que o
//: tipo não se conforma aquele protocolo

//: Um protocolo se comporta de forma muito similar a herança de uma classe. Assim
//: o tipo que se conforma com ele tem uma relação de "é um" com o protocolo, podendo
//: ser atribuido a uma variável ou constante deste tipo. Vale ressaltar que um protocolo
//: em Swift também é um tipo de dados:

let protocolInstance: ProtocolExample = Example()

protocolInstance.add(a: 3, b: 7)


//: - Note: Um tipo pode se conformar com múltiplos protocolos. Como a herança
//: múltipla de classes não é permitida em Swift, esta é a maneira de
//: contornar os problemas gerados por esta definição. Para indicar que a classe
//: se conforma com múltiplos protocolos eles devem ser listados após o dois pontos
//: da declaração, separados por vírgulas.


//: [Próximo](@next)

