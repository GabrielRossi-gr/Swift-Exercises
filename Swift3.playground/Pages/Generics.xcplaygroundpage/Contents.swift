//: [Anterior](@previous)
//: # Generics
import Foundation

//: Vejamos a função abaixo que troca dois valores:
func swapValues(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var a = 3, b = 5

swapValues(a: &a, b: &b)
a
b

//: - Note: O **&** indica que está sendo utilizado o endereço das variáveis
//:

//: Esta função funciona com valores inteiros apenas. Caso desejássemos
//: criar uma função para troca de valores Double teriamos que fazer uma função
//: para tal, e outra para String e assim por diante. Porém, tirando as diferenças
//: de tipagem todos os códigos seriam idênticos.
//:
//: *Generics* é um recurso de algumas linguagens para resolver este tipo de
//: problema. Ele permite definir um código genérico(!?! 🤔) para qualquer
//: tipo, ou para um conjunto de tipos:

func swapValues<T>(a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}

//: Esta função define como deve ser a troca de valores para quaisquer parâmetros
//: a e b, de qualquer tipo **T**, desde que a e b pertençam ao mesmo tipo.
//:
//: Com este único código podemos resolver o mesmo problema para diversos
//: tipos de dados:
var c = 3.5, d = 5.1

swapValues(a: &c, b: &d)
c
d

var e = "String1", f = "String2"

swapValues(a: &e, b: &f)
e
f

//: Caso a restrição de tipos iguais não seja respeitada, o compilador
//: apresentará um erro:
//swapValues(a: &c, b: &e)

//: - Note: Generics podem ser utilizados em métodos de um tipo de forma similar
//; e também para criarmos tipos genéricos.

//: [Próximo](@next)

