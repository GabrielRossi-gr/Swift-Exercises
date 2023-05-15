//: [Anterior](@previous)
//: # Tratamento de Erros
//:
//: # Try-Catch
import Foundation

//: Tratamento de erros são recursos da linguagem para lidar e
//: contornar erros na execução de alguma condição de um programa
//: (por exemplo, um dado inválido, um dado que não pode ser recuperado
//: ou um *timeout* de uma requisição *web*).
//:
//: Em Swift erros são representados por tipos que se conformam ao protocolo
//: **Error**. Este é um protocolo vazio, apenas para indicar que de trata
//: de um erro.
//:
//: Vejamos um exemplo

enum ValidationError: Error {
    case InsuficientPrivileges
    case InvalidId
}

//: Uma função pode lançar um erro caso algo errado aconteça em sua
//: execução. usamos a estrutura **throws** para isso:

func getPersonData(id: Int) throws -> String  {
    
    let personList = [1: "Sergio", 2: "Geovana", 3: "Anna Carolina", 4: "Felipe", 5: "Bia", 6: "Marcella"]
    
    let person = personList[id]
    
    guard person != nil else {
        throw ValidationError.InvalidId
    }
    
    if (id == 2) {throw ValidationError.InsuficientPrivileges}
    
    return person!
}

//: Para chamar uma função que lança erros temos que tratá-la dentro de um
//: bloco **try**-**catch**

do {
    let name = try getPersonData(id: 3)
    print("A pessoa é \(name)")
} catch {
    print("Id dado é inválido")
}

do {
    let name = try getPersonData(id: 100)
    print("A pessoa é \(name)")
} catch {
    print("Id dado é inválido")
}

//: Podemos inclusive tratar error distintos em mais de uma cláusula

do {
    let name = try getPersonData(id: 2)
    print("A pessoa é \(name)")
} catch ValidationError.InvalidId {
    print("Id dado é inválido")
} catch ValidationError.InsuficientPrivileges {
    print("Você não tem privilégios para conhecer a saga de Marcelo Reina ainda!")
}

//: [Próximo](@next)

