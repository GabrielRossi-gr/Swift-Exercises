//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ## Comandos de Condição
import Foundation

let x = 1
//:O outro comando de condição disponível é o *switch-case*

switch x {
//: - Cada *case* pode tratar um único valor:
case 1:
    print("Valor é 1")
//: - Um conjunto finito de valores separado por vírgulas:
case 3,5:
    print("Valor é 3 ou 5")
//: - Uma faixa de valores (o que é definido por ...):
case 8...15:
    print("Valor está entre 8 e 15")
//: - Uma faixa de valores aberta (definido por ..<):
case 16..<20:
    print("Valor está entre 16 e 19")
    //: - Note: O comando switch deve ser exaustivo. Sendo assim, caso
    //: nem todos os valores possíveis sejam tratados em uma cláusula
    //: é necessário incluir uma cláusula *default* para tratar todos
//: os valores não cobertos:
default:
    print("Outro valor")
}

//: Swift permite tratar strings e enumerações (que serão vistas posteriormente) em cláusulas *switch-case*:

let comando = "F"

switch comando {
case "F":
    print("Andando para frente...")
case "T":
    print("Andando para trás...")
case "D":
    print("Virando a direita...")
case "E":
    print("Virando a esquerda...")
default:
    print("Comando inválido!")
}

//: [Próximo](@next)
