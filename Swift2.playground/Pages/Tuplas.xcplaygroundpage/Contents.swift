//: [Anterior](@previous)
//: # Tipos por Valor
//:
//: ## Tuplas
import Foundation

//: Tuplas são tipos de dados que agrupam conjuntos de valores em um
//: único valor composto. Para definir uma tupla utilizamos parênteses
//: e o conjunto de valores separados por vírgulas:

let coordinates = (30, 20)
let httpError = (404, "Not Found")

//: Podemos obter os valores da tupla pelo índice da informação:
coordinates.0
httpError.1

//: Outra forma de acessar a informação é decompor a tupla nos tipos que a formam.
let (x,y) = coordinates
y

//: Para maior legibilidade e clareza, é possivel criar tuplas com elementos nomeados

let gpsLocation = (latitude: -22.9099, longitude: -47.0626)
gpsLocation.longitude

//: Tuplas são tipos como quaisquer outros em Swift, podendo ser utilizados como parâmetros de
//: função, valores de retorno ou atribuidas a variáveis e constantes.

func mirror(coordinates:(x:Int,y:Int)) -> (x:Int,y:Int) {
    return (coordinates.x * -1, coordinates.y * -1)
}

let mirroredPoint = mirror(coordinates: (x: 30, y: 10))
mirroredPoint.x

//: - Note: Assim como *structs* e *enums*, tuplas são tipos de valor em Swift.

//: [Próximo](@next)

