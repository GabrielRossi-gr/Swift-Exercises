//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Range
import Foundation

//: Os operadores **...** e *..<** definem *ranges* de valores
//: abertos e fechados. Na versão 3 da linguagem Swift estes
//: operadores substituiram as construções do *for* no estilo
//: da linguagem C.
//:
//: Para conseguirmos a mesma versatilidade desta construção
//: podemos utilizar as funções *reversed* e *stride*.

//: A função reversed é uma função do *range* que retorna
//: um novo range, em ordem reversa ao original

for i in (1..<5) {
    print("Valor é \(i)")
}

for i in (1..<5).reversed() {
    print("Valor reverso é \(i)")
}

//: A função *stride* permite avançar no *range* de forma
//: intervalada:
for i in stride(from: 1, to: 10, by: 2) {
    print("Valor é \(i)")
}

for i in stride(from: 1, to: 5, by: 0.2) {
    print("Valor é \(i)")
}


//: [Próximo](@next)

