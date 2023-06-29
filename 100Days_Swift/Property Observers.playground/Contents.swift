import UIKit



//Os observadores de propriedade permitem que você execute o código antes ou depois de qualquer alteração de propriedade. Para demonstrar isso, escreveremos uma Progressestrutura que rastreia uma tarefa e uma porcentagem de conclusão:

struct Progress_ {
    var task: String
    var amount: Int
}


//Agora podemos criar uma instância dessa estrutura e ajustar seu progresso ao longo do tempo:

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


//O que queremos que aconteça é que o Swift imprima uma mensagem toda vez que "amount" mudar, e podemos usar um "didSet" observador de propriedade para isso. Isso executará algum código toda vez que "amount" mudar:

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

//Você também pode usar willSetpara agir antes que uma propriedade seja alterada, mas isso raramente é usado.
