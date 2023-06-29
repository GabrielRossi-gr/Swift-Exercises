import UIKit

//O Swift nos dá duas maneiras de criar intervalos: os operadores ..<e . ...O operador de intervalo semiaberto, ..<, cria intervalos até, mas excluindo o valor final, e o operador de intervalo fechado, , ...cria intervalos até e incluindo o valor final.

//Por exemplo, o intervalo 1..<5contém os números 1, 2, 3 e 4, enquanto o intervalo 1...5contém os números 1, 2, 3, 4 e 5.

//Os intervalos são úteis com switchos blocos, porque você pode usá-los para cada um dos seus casos. Por exemplo, se alguém fez um exame, podemos imprimir diferentes mensagens dependendo de sua pontuação:


let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

//Como antes, o defaultcaso deve estar lá para garantir que todos os valores possíveis sejam cobertos.

