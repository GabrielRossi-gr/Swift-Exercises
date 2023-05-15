//: [Anterior](@previous)
//: # Mais elementos de sintaxe de Swift
//:
//: ## Statements Rotulados
import Foundation

//: Podemos montar estruturas complexas com *loops* e comandos
//: condicionais aninhados. É possível definir rótulos (*labels*)
//: para estes elementos de forma a permitir um controle maior
//: sobre o fluxo de execução, de forma a identificar para os
//: comandos *break* e *continue* qual comando ele deve terminar
//: ou iniciar uma nova iteração

var tries = 1

gameLoop: while true  {
    
    if tries <= 3 {
        print("Lance \(tries)")
        tries += 1
        continue gameLoop
    }
    
    print("Fim de jogo!")
    break gameLoop
    
}

//: Neste caso simulamos um jogo onde o *loop* de jogo
//: tem 3 lances. Caso o número e jogadas esteja dentro
//: deste limite ele executa a linguagem, incrementa o
//: número dela e recomeça o *loop* (para a nova jogada).
//: caso contrário ele termina o *loop*.

