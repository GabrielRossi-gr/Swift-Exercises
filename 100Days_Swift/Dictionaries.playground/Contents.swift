import UIKit


//Dicionários são coleções de valores como arrays, mas em vez de armazenar coisas com uma posição inteira, você pode acessá-los usando o que quiser.

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]


//Assim como os arrays, os dicionários começam e terminam com colchetes e cada item é separado por uma vírgula. No entanto, também usamos dois pontos para separar o valor que você deseja armazenar (por exemplo, 1,78) do identificador sob o qual deseja armazená-lo (por exemplo, “Taylor Swift”).

//Esses identificadores são chamados de chaves e você pode usá-los para ler os dados do dicionário:

heights["Taylor Swift"]


//Observação: ao usar anotações de tipo, os dicionários são escritos entre colchetes com dois pontos entre o identificador e os tipos de valor. Por exemplo, [String: Double]e [String: String].




///                         Valores padrão do dicionário

//Se você tentar ler um valor de um dicionário usando uma chave que não existe, o Swift enviará de volta nil– nada. Embora isso possa ser o que você deseja, há uma alternativa: podemos fornecer ao dicionário um valor padrão a ser usado se solicitarmos uma chave ausente.

//Para demonstrar isso, vamos criar um dicionário de sorvetes preferidos para duas pessoas:

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]


//Podemos ler o sorvete favorito de Paul assim:

favoriteIceCream["Paul"]


//Mas se tentássemos ler o sorvete favorito de Charlotte, receberíamos zero, o que significa que Swift não tem um valor para essa chave:

favoriteIceCream["Charlotte"]


//Podemos consertar isso dando ao dicionário um valor padrão de “Desconhecido”, para que, quando nenhum sorvete for encontrado para Charlotte, recebamos “Desconhecido” em vez de zero:

favoriteIceCream["Charlotte", default: "Unknown"]

