//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Funções
import Foundation

//: A sintaxe da chamada de funções em Swift 3.0 pede que os
//: parâmetros sejam nomeados. Existe, porém, algumas maneiras
//: de flexibilizar isto.

//: Os nomes dos parâmetros são utilizados como valores locais
//: dentro da função. Caso desejemos usar um nome externo (para
//: a chamada da função) diferente do nome utilizado internamente
//: na função podemos fazer isto em Swift:

func addThree(outName inName: Int) -> Int {
    return inName + 3
}

addThree(outName: 4)

//: Caso desejemos omitir o nome do parâmetro na chamada da
//: função podemos definir seu nome externo como _ :

func addFive(_ inName: Int) -> Int {
    return inName + 5
}

addFive(5)

//: O identificador **_** pode ser utilizado para identificar
//: valores que vamos descartar

let _ = 5

for _ in 1 ... 3 {
    print("Same message, index does not matter!")
}

//: [Próximo](@next)


