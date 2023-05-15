//: [Anterior](@previous)
//: # Tratamento de Erros
//:
//: ## Guard
import Foundation

//: O comando **guard**-**else** permite realizar verificações no código
//: antes de permitir a continuidade de sua execução. Ele se assemelha
//: a uma cláusula **if** em que o **else** é obrigatório e deve sair do escopo
//: de execução atual(com um **return** ou **break**, por exemplo) e o
//: caso verdadeiro apenas continua a execução.
//:
//: Utilizando isso podemos criar "códigos defensivos" validando parâmetros
//: de entrada antes de continuarmos a execução de algo:

func guardedFunction(_ parameter: Int) -> Int? {
    
    guard parameter > 3 else {
        //Parametro tem que ser maior que 3!
        //Se não colocarmos um return aqui teremos
        //um erro de compilação. Experimente comentar a próxima linha:
        return nil
    }
    
    return parameter * 2
}

guardedFunction(5)
guardedFunction(2)

//: O objetivo do comando **guard** é gerar  um código de mais fácil leitura
//: para tratamento de erros ou não atendimento de algum requisito.

//: [Próximo](@next)

