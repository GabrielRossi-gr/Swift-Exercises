//: [Anterior](@previous)
//: # Closures

import Foundation

//: Como funções em Swift são "cidadãos de primeira classe" e tratadas
//: como um tipo de dados, é possível passar funções como parâmetros e
//: obtê-las como valores de retorno em funções. Funções que utilizam outras
//: funções desta forma são conhecidas como "funções de alta ordem" (*high
//: order functions*).
//:
//: Closures, como "funções anônimas" podem ser utilizadas da mesma forma:

func highOrderFunction(parameter:(Int, Int)->Int, a: Int, b: Int) -> Int {
    return parameter(a,b)
}

highOrderFunction(parameter: { (x, y) -> Int in
    return x + y
}, a: 4, b: 2)

highOrderFunction(parameter: { (x, y) -> Int in
    return x * y
}, a: 4, b: 2)

//: De forma similar uma função pode retornar uma função:

func getOperation(operation:String) -> ((Int,Int) -> Int) {
    switch (operation) {
    case "+":
        return { (x, y) -> Int in
            return x + y
        }
    case "-":
        return { (x, y) -> Int in
            return x - y
        }
    case "*":
        return { (x, y) -> Int in
            return x * y
        }
    case "/":
        return { (x, y) -> Int in
            return x / y
        }
    default:
        return { (x, y) -> Int in
            return x + y
        }
    }
}

var operation = getOperation(operation: "+")

operation(2,5)

operation = getOperation(operation: "*")

operation(2,5)

//: [Próximo](@next)
