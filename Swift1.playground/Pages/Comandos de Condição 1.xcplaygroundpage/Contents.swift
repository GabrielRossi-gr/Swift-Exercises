//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Comandos de Condição
import Foundation

var x = 5

//: O primeiro comando de condição que veremos é o *if*. Ele avalia uma
//: expressão booleana e executa o conjunto de comandos entre {} caso esta
//: seja verdadeira.
if x > 3 {
    print("\(x) é maior que 3!")
}

//: Podemos utilizar opcionalmente uma cláusula *else* que será executada
//: no caso da expressão ser falsa.

x = 2

if x > 3 {
    print("\(x) é maior que 3!")
} else {
    print("\(x) é menor ou igual a 3!")
}

//: - Note: Veja que a expressão booleana pode ou não estar entre parênteses.

//: [Próximo](@next)
