//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Funções
import Foundation

//: Em Swift, de forma similar as linguagens funcionais, as
//: funções são "cidadãos de primeira classe" (*first class
//: citzens*). Isto significa que funções são tratadas como
//: um tipos e podem ser atribuídas a variáveis e constantes,
//: passadas como parâmetros ou devolvidas como valores de
//: retorno:

func add(a: Int, b: Int) -> Int {
    return a+b
}

func mult(c: Int, d: Int) -> Int {
    return c * d
}

let func1 = add
var func2 = mult

//: - Note: Veja que o tipo de uma função é (<parametros>) -> Valor de
//: retorno. No nosso caso ambas as funções são do tipo
//: (Int,Int) -> Int

func1(3,2)
func2(5,4)

//: Podemos utilizar esta tipagem de funções para utilizá-las
//: como parâmetros em uma outra função

func useFunc(_ customFunction: (Int,Int) -> Int, _ num1: Int, _ num2: Int) -> Int {
    return customFunction(num1,num2)
}

useFunc(mult, 3, 2)
useFunc(add, 3, 2)

//: De forma similar, podemos utilizar funções como valores
//: de retorno:

func operation(_ operationType: String) -> ((Int, Int) -> Int) {
    switch (operationType) {
    case "+":
        return add
    case "*":
        return mult
    default:
        return add
    }
}


operation("+")(3,2)
operation("*")(3,2)

//: E como outros tipos, os tipos de função também podem ser
//: *nullable*:

func operation2(_ operationType: String) -> ((Int, Int) -> Int)? {
    switch (operationType) {
    case "+":
        return add
    case "*":
        return mult
    default:
        return nil
    }
}

operation2("+")!(3,2)
operation2("*")!(3,2)


//: [Próximo](@next)


