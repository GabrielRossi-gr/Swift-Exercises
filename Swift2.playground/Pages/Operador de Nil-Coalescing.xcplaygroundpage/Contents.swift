//: [Anterior](@previous)
//: # Estruturas para tratamento de *optionals*
//:
//: ## Operador de Nil-Coalescing
import Foundation
//: O Operador de nil-coalescing (**??**) é um atalho para a seguinte
//: operação:

let a: Int? = 3
let b: Int? = nil

let value1: Int = a != nil ? a! : 4
let value2: Int = b != nil ? b! : 5

//: Este operador tem o formato **a??b** sobre um dado de tipo opcional,
//: retornando o valor de a, caso contenha valor ou b, um dado do mesmo
//: tipo base do opcional de a, caso este contenha **nil**:

let value3 = a ?? 4
let value4 = b ?? 5



