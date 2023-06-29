import UIKit



//O Swift permite que você crie seus próprios tipos de duas maneiras, das quais as mais comuns são chamadas de estruturas ou apenas structs . Os structs podem receber suas próprias variáveis ​​e constantes, e suas próprias funções, então criados e usados ​​como você quiser.

//Vamos começar com um exemplo simples: vamos criar uma Sportstruct que armazena seu nome como uma string. Variáveis ​​dentro de structs são chamadas de properties , então esta é uma struct com uma propriedade:

public struct Sport {
    var name: String
}

//Isso define o tipo, então agora podemos criar e usar uma instância dele:

var tennis = Sport(name: "Tennis")
print(tennis.name)

//Fizemos ambos namee tennisvariável, então podemos alterá-los como variáveis ​​regulares:

tennis.name = "Lawn tennis"

//As propriedades podem ter valores padrão assim como as variáveis ​​regulares, e geralmente você pode confiar na inferência de tipo do Swift.
