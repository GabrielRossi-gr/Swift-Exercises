//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Interpolação de Strings
import Foundation

//: Uma maneira de criar strings utilizando textos fixos combinados
//: a valores é a *interpolação de strings*. Este elemento da linguagem
//: permite utilizar um *placeholder* (**\\( )**) para incluir um valor
//: dentro de uma *string*. O valor dentro deste *placeholder* é obtido ou
//: calculado e substituido na string.

//: No exemplo abaixo temos uma expressão que é avaliada e substituida na
//: string a ser apresentada:

print("3 + 2 = \(3+2)")


//: Podemos utilizar isto também na atribuição de uma string:

let exemploAtribuição: String = "3 + 2 = \(3+2)"

//: Assim como podemos utilizar este mecanismo com valores constantes ou
//: de variáveis

let multiplicador = 3
var valor = 10

var resultado = "O resultado da multiplicação de \(multiplicador) por \(valor) é \(multiplicador * valor)"

print(resultado)

//: Vale ressaltar que isto não se aplica apenas a tipos numéricos

var nome = "Sergio"

print("Olá, \(nome)!")

//: [Próximo](@next)

