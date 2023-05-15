//: [Anterior](@previous)
//: # Closures

import Foundation

//: Closures são blocos de código que podem ser utilizados e passados
//: como atributos ou parâmetros e utilizados ao longo do código. Estes
//: elementos são similares a blocos de código em C e Objective-C e a
//: λ-functions em outras linguages de programação. Podemos pensar em closures
//: como "funções anônimas".
//:
//: Uma closure é definida entre chaves (**{ }**) e pode ser atribuida a uma
//: variável ou constante, utilizada como parâmetro ou retornada por uma função
//: ou por outra closure.
//:
//: No exemplo abaixo atribuimos a variável *simpleClosure* uma função que apenas
//: imprime um texto:
let simpleClosure = { print ("Uma closure bem simples") }
simpleClosure()

//: Esta closure não possui parâmetros e não retorna valores, sendo equivalente
//: a uma função com estas características. Por isso o tipo desta função é
//: **() -> Void**.Para chamá-la utilizamos a variável que a armazena como se
//: esta fosse uma função (lembrando
//:
//: Para definirmos parâmetros utiizamos esta construção no início da closure:

let closureWithParameters = { (a: Int, b: Int) in
    print("Parâmetros são \(a) e \(b)")
}

closureWithParameters(3,4)

//: De forma similar podemos incluir um valor de retorno:

let closureWithReturnValue = { () -> Int in
    return 3
}

closureWithReturnValue()

//: A forma mais geral com parâmetros e valores de retorno segue o seguinte padrão:


let closureWithParametersAndReturnValue = { (a: Int, b: Int) -> Int in
    return a + b
}


closureWithParametersAndReturnValue(3,2)


//: [Próximo](@next)

