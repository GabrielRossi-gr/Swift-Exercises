//: [Anterior](@previous)
//: # Funcionalidades Adicionais de *Optionals*
//:
//: ## *Optionals* como tipos genéricos
import Foundation

//: Como vimos anteriormente, um *optional* é um tipo
//: que pode conter dados (de um determinado tipo) ou
//: **nil**. Podemos fazer operações de atribuição sobre
//: uma variável ou constante deste tipo passando ou
//: **nil** ou um valor do tipo de dados associado a ele.
//:
//: Apesar das facilidades que a sintaxe da linguagem oferece,
//: os optionals são tipos genéricos, associados com o tipo base
//: dos dados que ele armazena. Sendo assim

let genericValue: Optional<Int> = 3

//: É o mesmo que:

let genericValue2: Int? = 3

//: Por este motivo o *optional* não é um tipo, mas um
//: "conjunto" de tipos. Sendo assim um valor Optional<Int> (Int?)
//: não pode ser atribuido a um Optional<String> (String?) e 
//: vice-versa.


//: [Próximo](@next)
