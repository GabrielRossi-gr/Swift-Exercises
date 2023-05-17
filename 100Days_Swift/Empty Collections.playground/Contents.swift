import UIKit

///                    Criando coleções vazias

//Arrays, conjuntos e dicionários são chamados de coleções , porque eles coletam valores juntos em um só lugar.


//Se você deseja criar uma coleção vazia , basta escrever seu tipo seguido de abertura e fechamento de parênteses. Por exemplo, podemos criar um dicionário vazio com strings para chaves e valores como este:

/// Dicionário
var teams = [String: String]()

//Adicionar entradas:
teams["Paul"] = "Red"


/// Array
var results = [Int]()

/// Set
//é feito de maneira diferente:
var words = Set<String>()
var numbers = Set<Int>()

//Isso porque o Swift tem uma sintaxe especial apenas para dicionários e arrays; outros tipos devem usar a sintaxe de colchetes como "Set"s.

//Se você quiser, pode criar arrays e dicionários com sintaxe similar:
var scores = Dictionary<String, Int>()
var result = Array<Int>()


