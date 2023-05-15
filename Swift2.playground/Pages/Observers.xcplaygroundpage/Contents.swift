//: [Anterior](@previous)
//: # Funcionalidades adicionais de orientação a objetos
//:
//: ## Observers
import Foundation

//: Um nível de controle que Swift permite é observar quando o 
//: valor de um atributo (*stored property*) será ou foi alterado. Para isso
//: disposmos das funções **willSet** e **didSet**:

class Example {
    
    var aValue: Int = 0 {
        willSet(changedValue) {
            print("Atributo aValue será alterado para \(changedValue)")
        }
        
        didSet {
            print("Atributo teve seu valor alterado de \(oldValue) para \(aValue)")
        }
    }
}

let sampleObject = Example()

sampleObject.aValue = 5
sampleObject.aValue = 3

//: - Note: Tal funcionalidade permite encadear operações de forma associada
//: a uma mudança de valor. Um exemplo disso poderia ser redesenhar
//: um elemento gráfico na tela quando uma propriedade for alterada (tamanho,
//: cor, etc.) ou atualizar uma informação em um servidor quando uma
//: informação for alterada na aplicação. No exemplo abaixo temos um caminho
//: e uma distância caminhada neste. Utilizamos os *observers* para não permitir
//: que a distância caminhada seja maior que o caminho:

class Path {
    
    var length:Int = 0
    
    var walkedDistance: Int = 0 {
        didSet {
            if (walkedDistance > length) {
                //Não podemos andar uma distância maior que o caminho!
                walkedDistance = oldValue
            }
            
        }
    }
}

let path = Path()
path.length = 500

path.walkedDistance = 300
path.walkedDistance

path.walkedDistance = 1000
path.walkedDistance



