//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Arrays e Dicionários
import Foundation

//: Arrays podem ser definidos utilizando-se chaves ([]) com valores
//: separados por vírgulas. Para acessar um valor de um array utilizam-se
//: as mesmas chaves, com o índice desejado:

let animals = ["cachorro", "gato", "urso", "panda", "elefante", "porco"]

animals[3]

//: De forma similar podemos criar dicionários utilizando chaves, porém
//: separando o par (chave, valor) com dois pontos(:) :

let animalFaces = ["cachorro":"🐶", "gato":"🐱", "urso":"🐻", "panda":"🐼", "elefante":"🐘", "porco":"🐖"]

animalFaces["panda"]


//:Para criar arrays e dicionários vazios podemos utilizar a seguinte sintaxe:

let emptyStringArray = [String]()
let emptyStringArray2: [String] = []

//: - Note: Note que se o compilador não for capaz de
//: inferir o tipo do array teremos um erro. Isto pode ser
//: visto descomentado a linha abaixo:

//let emptyArrayError = []


//: [Próximo](@next)
