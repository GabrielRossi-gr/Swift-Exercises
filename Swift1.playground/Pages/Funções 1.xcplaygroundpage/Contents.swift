//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Funções
import Foundation

//: Funções são trechos de código que efetuam tarefas
//: específicas, podendo receber informações como entrada
//: (parâmetros) e retornar um valor de saída (valor de retorno).
//:
//: A definição de uma função é feita com a palavra reservada
//: *func* de acordo com a estutura abaixo:

func helloMessage(name: String) -> String {
    return "Hello, \(name)!"
}

//: Para chamar a função utilizamos seu nome e a lista de
//: parâmetros entre parênteses

helloMessage(name: "Sergio")

let message = helloMessage(name: "Sergio")

//: Podemos omitir parâmetros ou valores de retorno quando
//: não existem:

func helloWorld() -> String {
    return "Hello, World!"
}

func sayMyName(name: String) {
    print("Hello, \(name)!")
}

//: A função sem valor de retorno, como acima é equivalente a
//: uma funcão que retorna o tipo Void:
//:
//  func sayHello(name:String) -> Void {
//      print("Hello, \(name)!")
//  }

helloWorld()
sayMyName(name: "Heisenberg")

//: [Próximo](@next)

