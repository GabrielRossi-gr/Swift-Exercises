import UIKit


//Enumerações – geralmente chamadas apenas de "Enum" – são uma forma de definir grupos de valores relacionados de forma a torná-los mais fáceis de usar.

//Por exemplo, se você quiser escrever algum código para representar o sucesso ou falha de algum trabalho que está fazendo, você pode representá-lo como strings:
let result = "failure"


//Mas o que acontece se alguém acidentalmente usar nomes diferentes?
let result2 = "failed"
let result3 = "fail"

//Todos esses três são strings diferentes, então significam coisas diferentes.


//Com enums podemos definir um Resulttipo que pode ser successou failure, assim:
enum Result {
    case success
    case failure
}


//E agora, quando o usarmos, devemos escolher um desses dois valores:
let result4 = Result.failure
//Isso evita que você use strings diferentes acidentalmente a cada vez.





///                        Enum valores associados


//Além de armazenar um valor simples, as enumerações também podem armazenar valores associados anexados a cada caso. Isso permite que você anexe informações adicionais às suas enumerações para que possam representar dados com mais nuances.


//Por exemplo, podemos definir uma enumeração que armazena vários tipos de atividades:

enum Activity {
    case bored
    case running
    case talking
    case singing
}



//Isso nos permite dizer que alguém está falando, mas não sabemos do que está falando , ou podemos saber que alguém está correndo, mas não sabemos para onde está correndo .
//Os valores associados à enumeração nos permitem adicionar esses detalhes adicionais:

enum Activity_ {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}


//Agora podemos ser mais precisos – podemos dizer que alguém está falando sobre futebol:

let talking = Activity_.talking(topic: "football")







///                      Enum valores brutos

