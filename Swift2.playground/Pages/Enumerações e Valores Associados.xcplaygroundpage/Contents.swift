//: [Anterior](@previous)
//: # Tipos por Valor
//:
//: ## Enumerações e Valores Associados

//: Um recurso muito poderoso de Swift é poder associar valores
//: aos elementos de uma enumeração.
//:
//: No exemplo abaixo criamos uma enumeração de nacionalidades e
//: dados sobre documentos desta
//:
enum Nationality {
    
    //Brasileiro - RG, Emissor, CPF
    case Brazilian(String,String,String)
    //Americano - SSN
    case American(String)
}

//: Para criarmos um elemento do enum neste caso, passamos os valores associados:
let citzen1 = Nationality.Brazilian("34.519.336-2", "SSP-SP", "665.574.151-31")
let citzen2 = Nationality.American("428-13-9266")

//: Podemos obter os valores associados relacionando-os com uma constante (usando
//: **let** ou uma variável (utilizando **var**):

switch citzen1 {
case .Brazilian(let rg, var region, let cpf):
    print("Cidadão com RG: \(rg) \(region)  e CPF: \(cpf)")
    //Posso mudar o valor de region, pois ela é uma variável
    region = "SSP-MG"
    // Mas não dos valores constantes, o que geraria um erro de compilação:
// rg = "13.828.008-3"
case .American:
    print("Cidadão americano")
}

//: Outra forma de fazermos isto é com a construção **if**-**case**:
if case .American(let ssn) = citzen2 {
    print("SSN é \(ssn)")
}

if case .American(let ssn) = citzen1 {
    print("SSN é \(ssn)")
} else {
    print("Cidadão brasileiro")
}

//: [Próximo](@next)

