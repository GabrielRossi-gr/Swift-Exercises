import UIKit


//Os structs podem ter funções dentro deles, e essas funções podem usar as propriedades do struct conforme necessário. Funções dentro de structs são chamadas de métodos , mas ainda usam a mesma funcpalavra-chave.

//Podemos demonstrar isso com uma Cityestrutura. Este terá uma populationpropriedade que armazena quantas pessoas existem na cidade, além de um collectTaxes()método que retorna a contagem da população multiplicada por 1000. Como o método pertence a ele, ele pode ler a propriedade Cityatual da cidade .population

//Aqui está o código:
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

