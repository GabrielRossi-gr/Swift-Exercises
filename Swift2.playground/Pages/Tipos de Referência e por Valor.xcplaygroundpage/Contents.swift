//: [Anterior](@previous)
//: # Tipos por Valor
//:
//: ## Tipos de referência e de valor
import Foundation

//: Como foi dito anteriormente, estruturas são "tipos de valor" enquanto classes
//: são "tipos de referência".
//:
//: Tipos de referência são mantidos em uma área de memória chamada *heap*. Quando
//: uma variável ou constante recebe um dado deste tipo ele mantém uma referência para
//: a área de memória que armazena este dado. Se atribuirmos isto a outra variável
//: ambas apontarão para o mesmo local de memória e compartilharão os dados

class Place {
    
    var name: String
    
    init(_ name: String) {
        self.name = name
    }
}

class Person {
    var name: String
    var place: Place
    
    init (name: String, place: Place) {
        self.name = name
        self.place = place
    }
}

//: Vamos criar duas pessoas, João e Maria, que estão em Campinas.
var campinas = Place("Campinas")

let joao = Person(name: "João", place: campinas)
let maria = Person(name: "Maria", place: campinas)

//: Agora vamos alterar a localização de Maria para São Paulo.
maria.place.name = "São Paulo"

//: E com isso, fazemos João ser o primeiro humano a ser teletransportado!
joao.place.name

//: Isto ocorre por que ambos os objetos de Pessoa apontam para um mesmo objeto
//: de local. Com isso, ao alterarmos os dados pela referência de um, o mesmo
//: se reflete no outro
//:
//: Tipos de valor, por outro lado, são armazenados na pilha (*stack*) e são copiados
//: quando atribuimos este dado novamente:

struct PlaceStruct {
    
    var name: String
    
    var int: Int = 3
    
    init(_ name: String) {
        self.name = name
    }
}

class Person2 {
    var name: String
    var place: PlaceStruct
    
    init (name: String, place: PlaceStruct) {
        self.name = name
        self.place = place
    }
}

//: Vamos repetir o exemplo, utilizando uma *struct* para representar a cidade:
var cidade = PlaceStruct("Campinas")

let huguinho = Person2(name: "Huguinho", place: cidade)
let zezinho = Person2(name: "Zezinho", place: cidade)

//: Agora vamos alterar a localização de Huguinho, como fizemos no exemplo anterior
huguinho.place.name = "São Paulo"

//: Porém, os dados do Zezinho não são alterados, visto que criamos cópias
//: diferentes da localização para cada uma das pessoas.
huguinho.place.name
zezinho.place.name


//: - Note: Utilizar bem tipos de valor e de referência são importantes, pois
//: podem evitar efeitos colaterais como o "teletransporte" que vimos no exemplo de classes.

//: - Note: Outro ponto importante é que um objeto atribuido a uma constante não pode ter
//: sua referência alterada, mas suas propriedades sim. Já uma estrutura é tratada como
//: um bloco de informações constante:

let cidade1 = Place("Campinas")
let cidade2 = PlaceStruct("Campinas")

//: Podemos alterar as propriedades do objeto referenciado por **cidade1**:
cidade1.name = "São Paulo"

//: Porém a referência ao objeto é constante, e não podemos alterá-la. A linha a seguir
//: geraria um erro de compilação:
//cidade1 = Place("São Paulo")

//: No caso de uma *struct* tanto a alteração de propriedades quanto da referência ao dado
//: gerariam erros de compilação:
//cidade2.name = "São Paulo"
//cidade2 = PlaceStruct("São Paulo")


//: [Próximo](@next)

