//: [Anterior](@previous)
//: # Funcionalidades Adicionais de Orientação a Objetos
//:
//: ## Extensão de classes
import Foundation

//: Extensões permitem incluir novas funcionalidades a um
//: tipo já existente. No exemplo abaixo criamos uma extensão da
//: classe String que disponibiliza uma nova funcionalidade além de
//: alterar uma funcionalidade já existente:

extension String {
    func customMethod() {
        print("O tipo String agora tem um novo método!")
    }
    
    func lowercased() -> String {
        return "Você não me rebaixará! Huahuahuahuahua!!!"
    }
}

let name = "Sergio"
name.uppercased()
name.lowercased()
name.customMethod()

//: - Note: As extensões não podem criar novos atributos na classe (*stored
//: properties*), pois isto alteraria a quantidade de memória utilizada pelos
//: objetos dessa classe.

//: - Note: Extensões podem ser feitas tanto para classes dos *frameworks* do
//: sistema quanto para classes customizadas. Isto pode ser útil para dividir
//: as funcionalidades de uma classe logicamente ou mesmo em múltiplos arquivos.


//: [Próximo](@next)

