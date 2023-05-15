//: [Anterior](@previous)
//: # Swift - OOP
//:
//: ## Deinicializadores

import Foundation

//: ### Gerenciamento de Memória e ARC

//: Durante a execução de uma aplicação muitos objetos podem ser criados.
//: Como estes objetos ocupam espaço em memória, se esta não for gerenciada
//: corremos o risco de ocupar toda a memória disponível. Em algumas
//: linguagens, como C e C++ este processo é controlado diretamente no
//: próprio código (com construções como *malloc* e *free*).
//:
//: No caso de Swift este controle é feito automaticamente através da contagem
//: de referências. Um objeto ocupa uma área na memória (*heap*) e uma
//: variável "aponta" para este objeto, sendo uma referência para ele. Swift
//: mantém uma contagem de quantas referências existem para cada objeto e,
//: no momento que esta contagem chega em zero o objeto é removido da
//: memória, pois não existe nenhum acesso a esta informação. Este controle
//: é conhecido como ARC(*automatic reference counting*, contagem automático d
//: e referências).

//: ### Deinicializadores

//: Imediatamente antes de um objeto ser removido da memória pelo ARC, um
//: método especial, chamado deinicializador é chamado. Este método é definido
//: na classe com o nome deinit. Vejamos um exemplo:

class Car {
    
    var plaque:String = ""
    
    deinit {
        print("Diga adeus ao carro \(plaque)!")
    }
}

//: Criamos abaixo dois novos carros:
var car = Car()
var car2 = Car()
car.plaque = "DPX 9333"
car2.plaque = "TOW 5682"

//: Como a variável *car* agora apontará para outro carro
//: a instância anteriormente referenciada (DPX 9333) será
//: removida da memória:
car = Car()
car.plaque = "CDE 6734"

//: Vamos criar uma segunda referência para o carro de placa TOW 5682.
var car3 = car2

//: Agora tems duas referência para este carro. Mesmo que removamos a
//: referência de car2, este carro continuará existindo, pois o número
//: de referências cairá de dois (*car2* e *car3*) para uma (apenas *car3*)

car2 = car

//: Se a referência car3 também for alterada, o objeto será removido pois
//: o número de referência cairá para zero! Para ver isto descomente a linha
//: abaixo:

// car3 = car


//: [Próximo](@next)

