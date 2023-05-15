//: [Anterior](@previous)
//: # Estruturas para tratamento de *optionals*
//:
//: ## Tipos Opcionais com ? e !

import Foundation

//: Existem declarações de tipos opcionais com **?** e **!**.
//: A diferença entre eles é como o compilador trata o uso deste
//: tipo. No caso de **!**, isto indica que o valor deve ser tratado
//: com *forced unwrap*, mesmo que isto não esteja explícito. Por exemplo,
//: podemos fazer a seguinte construção:

let forcedValue: Int! = 3
let value: Int = forcedValue

//: O mesmo não seria possível com um tipo definido com **?**. Para associarmos
//: um valor do tipo Int? com uma variável ou constante do tipo Int teríamos
//: que fazer o *forced unwrap* explicitamente, ou teríamos um erro.

//let wrappedValue:Int? = 3
//let value:Int = wrappedValue

//: De mesma forma, caso o tipo **!** seja acessado com valor nil, teremos
//: um erro em tempo de execução:

//let forcedNilValue:Int! = nil
//let value2:Int = forcedNilValue

//: A declaração com **!** é chamada de tipo opcional com *unwrap* implícito 
//: (*Implicitly Unwrapped Optional Type*). Já a declaração com **?** é um 
//: opcional "puro" e deve ser explicitamente *unwrapped* quando necessário.

//: [Next](@next)
