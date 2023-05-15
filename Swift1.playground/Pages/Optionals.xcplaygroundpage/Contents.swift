//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Optionals
import Foundation

//: Optional é um tipo de dado que pode conter um valor de um dado tipo ou
//: nenhum valor (nil). Por exemplo:

var x: Int? = 3

//: Neste caso *x* é um Optional de inteiro (o que é indicado pelo ?) que pode conter ou um valor inteiro ou nenhum valor:

x
x = nil

//: Isto se aplica a praticamente todos os tipos de dados:

var nome: String? = "Fulano de tal"
nome
nome = nil

//: - Note: É importante observar que um tipo Optional **não é** o mesmo
//: tipo de dado que ele guarda. Um *Optional* de inteiro não é um inteiro. Caso a linha abaixo seja descomentada teremos um erro:

//let y = x + 3

//: Devemos pensar no Optional como um tipo que "encapsula" um outro tipo
//: de dado. Desta forma para utilizar o valor que ele guarda devemos
//: "desencapsulá-lo", o que veremos a seguir.

//: [Próximo](@next)

