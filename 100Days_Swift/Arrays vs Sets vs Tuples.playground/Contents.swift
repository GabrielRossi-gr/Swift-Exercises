import UIKit

//Matrizes, conjuntos e tuplas podem parecer semelhantes a princípio, mas têm usos distintos. Para ajudá-lo a saber qual usar, aqui estão algumas regras.



//Se você precisa de uma coleção específica e fixa de valores relacionados onde cada item tem uma posição ou nome preciso, você deve usar uma tupla:

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")


//Se você precisa de uma coleção de valores que devem ser exclusivos ou precisa verificar se um item específico está lá com extrema rapidez, use um conjunto:

let set = Set(["aardvark", "astronaut", "azalea"])


//Se você precisa de uma coleção de valores que podem conter duplicatas, ou se a ordem dos seus itens é importante, você deve usar um array:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Arrays são de longe os mais comuns dos três tipos.
