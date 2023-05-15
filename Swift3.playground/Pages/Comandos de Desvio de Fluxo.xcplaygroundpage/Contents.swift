//: [Anterior](@previous)
//: #  Mais elementos de sintaxe de Swift
//:
//: ## Comandos de Desvio de Fluxo
import Foundation

//: Comandos de transferência de controle (*control transfer
//: statements*) alteram a ordem em que seu código executa,
//: ao transferir o fluxo de processamento para outro trecho
//: de código. Em Swift temos os comandos *continue*, *break*,
//: *fallthrough*, *return* e *throw* para fazer isto.
//:
//: Estudaremos os camondos *continue*, *break* e *fallthrough*
//: nesta seção, vendo os outros dois posteriormente.

//: O comando *continue* interrompe o fluxo de um loop, iniciando
//: a próxima interação deste

let sentence = "this is a test"
let charactersToRemove = ["a","i","e","h"," "]
var result = ""

for character in sentence.characters {
    
    let characterAsString = "\(character)"
    
    print("Start step: \(characterAsString)")
    
    if charactersToRemove.contains(characterAsString) {
        continue
    } else {
        result += characterAsString
    }
    
    print("End step: \(characterAsString)")
}

print("Result: " + result)

print ("================================")

//: O comando *break* termina a execução do *statement*. Ele pode
//: ser utilizado em um *case*

result = ""

for character in sentence.characters {
    
    let characterAsString = "\(character)"
    print("Start step: \(characterAsString)")
    
    if charactersToRemove.contains(characterAsString) {
        break
    } else {
        result += characterAsString
    }
    
    print("End step: \(characterAsString)")
}


print("Result: " + result)

print ("================================")

//: Outro uso deste comando é para cláusulas *switch*. Como
//: em Swift este comando é exaustivo e não permite *case*'s
//: vazios, pode ser necessário criar uma cláusula para fazer
//: *match* e ignorar os casos que não devem ser tratados:

let season = "winter"

switch (season) {
    
case "summer":
    print("☀️")
case "winter":
    print("⛄")
case "fall":
    print("🍂")
case "spring":
    print("🌼")
    //Este case é obrigatório ou teremos um erro de
    //compilação indicando que o switch deve ser exaustivo
    //como não queremos fazer nada neste caso, mas não
    //podemos deixar um case em branco, somos obrigados a
// utilizar o break!
default:
    break;
}

print ("================================")

//: Ao contrário do *switch* em C, este comando em Switch
//: trata apenas o primeiro *case* que se relaciona à
//: condição. Caso desejemos tratar múltiplos casos o
//: comando *fallthrough* pode ser utilizado:
let number = 4

switch (number) {
    
case 2,4,6,8,10:
    print("O número \(number) é par")
default:
    print("é um número inteiro")
}

switch (number) {
    
case 2,4,6,8,10:
    print("O número \(number) é par, e também")
    fallthrough
default:
    print("é um número inteiro")
}






//: [Próximo](@next)
