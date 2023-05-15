//: [Anterior](@previous)
//: # Tipos por Valor
//:
//: ## Enumerações
import Foundation

//: Enumerações definem um conjunto finito de valores de forma
//: que possam ser tratados no código de maneira fortemente tipada.
//: Uma das utilidades disto é garantir que apenas valores válidos sejam
//: utilizados para uma dada informação.
//:
//: Para definir uma enumeração usamos a palavra-chave *enum*:

enum Command {
    case Forward
    case Backward
    case TurnLeft
    case TurnRight
}

struct Robot {
    func execute(_ command: Command) {
        
    }
}

let robot = Robot()

//: Podemos desta forma limitar os comandos apenas a instruções válidas:
robot.execute(Command.Forward)

//: O tipo na enumeração pode até ser suprimida se o compilador tiver condições
//: de inferi-lo:
robot.execute(.TurnLeft)

//: Valores de enumeração podem ser utilizados como casos de um *switch*-*case*:
let command = Command.Backward

switch command {
case .Forward:
    print("Frente")
case .Backward:
    print("Ré")
case .TurnRight, .TurnLeft:
    print("Vira")
}

//: Enumerações podem ter um tipo associado (*raw value*) que permite sua conversão:

enum Weekday: Int {
    case Sunday = 1
    case Monday = 2
    case Tuesday = 3
    case Wednesday = 4
    case Thursday = 5
    case Friday = 6
    case Saturday = 7
}

let day = Weekday(rawValue: 4)

day
day!.rawValue

//: - Note: Assim como *structs*, *enums* são tipos de valor em Swift.


//: [Próximo](@next)

