//: [Anterior](@previous)
//: # Estruturas Básicas
//:
//: ##  Forced Unwrap
import Foundation

var x: Int? = 3

//: Para utilizar um valor armazenado em um Optional devemos
//: desencapsulá-lo (unwrap).
let y = x! + 3

//: O sinal de exclamação (!) após o identificador de tipo Optional
//: é um operador chamado *forced unwrap* que indica que desejamos utilizar
//: o tipo "base" deste. No caso, x! nos retorna o inteiro armazenado
//: em *x*. Porém, caso o Optional esteja armazenando um nil, teremos um
//: erro em tempo de execução. Isto pode ser visto caso removamos
//: o comentário abaixo:

x = nil
//x!

//: [Próximo](@next)

