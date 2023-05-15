//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Comandos de Condição
import Foundation

//: Vimos anteriormente que o tipo Optional pode conter um valor
//: do tipo que ele encapsula ou nenhum valor(nil). Vimos também que
//: podemos utilizar o *force unwrap* (!) para utilizar o valor encapsulado
//: caso tenhamos certeza que o Optional guarda um valor.
//:
//: Porém, caso não tenhamos certeza, podemos utilizar o comando *if-let*
//: para verificar se existe um valor guardado no Optional.

var x: Int? = 3

if let y = x {
    var z = y + 5
}

//: Utilizamos um novo identificador, *y*, no comando *if-let*. Este
//: identificador guardará o valor de *x* caso exista. Por isso, ele será
//: do tipo "encapsulado" por *x* (no nosso caso, um inteiro).
//:
//: O comando *if let* também aceita o *else*, caso o Optional avaliado
//: contenha nil:
x = nil

if let y = x {
    print("x contém o valor \(y)")
} else {
    print("x é nil")
}

//: [Próximo](@next)
