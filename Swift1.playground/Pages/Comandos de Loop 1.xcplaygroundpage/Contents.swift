//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Comandos de *Loop*
import Foundation

//:Os primeiros comandos de *loop* que veremos são o *while* e *repeat-while*.
//:Ambos repetem um conjunto de comandos enquanto uma expressão booleana for
//:verdadeira.

var x = 1
while (x < 5) {
    print("Valor de x é \(x)")
    x += 1
}

x = 6

print("============================")

//: A diferença entre os comandos *while* e *repeat-while* é que este último
//: executa ao menos uma vez (mesmo que a condição seja falsa desde
//: o início):

while (x < 5) {
    print("Valor de x é \(x)")
    x += 1
}

print("============================")

repeat {
    print("Valor de x é \(x)")
} while (x < 5)



//: [Próximo](@next)

