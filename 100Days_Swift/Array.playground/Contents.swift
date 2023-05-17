import UIKit

//Arrays são coleções de valores armazenados como um único valor. Por exemplo, John, Paul, George e Ringo são nomes, mas as matrizes permitem agrupá-los em um único valor chamado The Beatles.
//
//No código, escrevemos isto:

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"


let beatles = [john, paul, george, ringo]

//Essa última linha forma o array: começa e termina com colchetes, com cada item do array separado por uma vírgula.


//Você pode ler valores de uma matriz escrevendo um número entre colchetes. As posições do array contam a partir de 0, então se você quiser ler “Paul McCartney” você deve escrever isto:

print(beatles[1])

//Cuidado: o Swift trava se você ler um item que não existe. Por exemplo, tentar ler beatles[9]é uma má ideia.




//Observação: se você estiver usando anotações de tipo, as matrizes serão escritas entre colchetes: [String], [Int], [Double]e [Bool].
