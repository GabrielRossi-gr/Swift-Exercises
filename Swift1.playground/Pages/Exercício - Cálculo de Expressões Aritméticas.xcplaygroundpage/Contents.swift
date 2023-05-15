//: [Previous](@previous)
//: # Estruturas Básicas
//:
//: ## Exercício

import Foundation

//: Vamos implementar o algoritmo de Djikstra com duas pilhas
//: para cálculo de expressões aritméticas.
//: Este algoritmo possui os seguintes passos:
//: - Crie duas pilhas, uma para valores e outra para expressões
//: - Percorra cada caracter da expressão da seguinte forma:
//:     - Se o caracter for um (, não faça nada.
//:     - Se o caracter for um operador, empilhe na pilha de operadores
//:     - Se o caracter for um valor, empilhe na pilha de valores.
//:     - Se o caracter for um ), desempilhe um operador e dois valores
//: , aplique o operador a estes valores e empilhe o resultado (na pilha de valores)
//:
//: Como teste, utilize a expressão:

let expression = "(1 + (( 2 + 3 ) * (4 * 5)))"

//: Guarde o valor em uma variável **result**:

var result = 0

//: Escreva aqui o código que implementa o algoritmo pedido
//: e guarda o resultado em **result**:


//: Este código validará o resultado:

if (result == 101) {
    print("Exercício correto!")
} else {
    print("Expressão gerou resultado errado: \(result)")
}

