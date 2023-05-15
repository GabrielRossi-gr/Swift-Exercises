//: [Anterior](@previous)
//: # Swift - OOP
//:
//: ## Sobrecarga
import Foundation

//: Swift permite a *sobrecarga* (*overload*) de métodos, ou seja, criar um conjunto de métodos
//: (ou mesmo de funções independentes) com mesmo nome, mas com parâmetros ou valores de retorno
//: distintos:

class OverloadExample {
    
    func aMethod() -> String {
        print("Método com retorno String")
        return "String"
    }
    
    func aMethod() -> Int {
        print("Método com retorno inteiro")
        return 5
    }
    
    func aMethod(param1: Int, param2: Int) {
        print("Método com dois parâmetros inteiros \(param1) e \(param2)")
    }
    
    func aMethod(param1: Double, param2: Double) {
        print("Método com dois parâmetros double \(param1) e \(param2)")
    }
}

let obj = OverloadExample()

//: Como Swift tem um poderoso mecanismo de inferência de tipos, o compilador saberá
//: qual método utilizar se conseguir decidir o tipo de retorno:
let stringResult: String = obj.aMethod()
let intResult: Int = obj.aMethod()

//: Porém, caso esta informação não seja obtida, teremos um erro de compilação devido
//: a ambiguidade. Isto ocorrerá se a linha abaixo não estiver comentada:
//obj.aMethod()

//: O mesmo mecanismo de inferência funciona com os parâmetros:
obj.aMethod(param1: 1, param2: 2)
obj.aMethod(param1: 1, param2: 2.3)

//: - Note: Este recurso é muito útil para criação de inicializadores ou métodos para
//: lidar com conjuntos distintos de entradas. Vale lembrar, porém, que caso mal utilizado
//: ou caso o padrão de nomes não seja bom e significativo, este recurso pode comprometer
//: seriamente a legibilidade do código.

//: [Próximo](@next)

