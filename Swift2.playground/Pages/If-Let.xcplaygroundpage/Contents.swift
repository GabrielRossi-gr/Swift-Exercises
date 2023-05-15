//: [Anterior](@previous)
//: # Estruturas para tratamento de *optionals*
//:
//: ## If-Let
import Foundation

//: Muitas vezes precisamos tratar uma informação guardada em um opcional
//: apenas quando ela estiver definida. Para isto podemos usar a construção
//: **if**-**let**:

struct Employee {
    var name: String?
    var age: Int?
}

struct Department {
    var name: String?
    var manager: Employee?
}

let department1 =  Department(name: "Sales", manager: Employee(name: "Marcos", age: 31))
let department2 =  Department(name: "Departamento anárquico", manager: nil)

func printManagerAge(department:Department) {
    if let age = department.manager?.age {
        //age é um valor de tipo Int e não Int?
        let x: Int = age
        print("A idade do gerente \(age) anos.")
    } else {
        print("Não temos um gerente definido ou sua idade não é conhecida!")
    }
    
}

//: Veja que a estrutura **if**-**let** atribui ao rótulo passado logo em seguida o valor
//: do opcional ou cadeia de opcionais após o **=** se ele tiver valor e chama o bloco de
//: código do **if**. Esta constante será do "tipo base" e não do opcional (como podemos
//: ver em relação a atribuição de **x**). Caso o resultado do opcional/cadeia de opcionais
//: seja **nil** o bloco **else** será chamado:

printManagerAge(department: department1)
printManagerAge(department: department2)

//: [Próximo](@next)


