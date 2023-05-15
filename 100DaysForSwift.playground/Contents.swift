import UIKit
//
///*
// 1# DAY RESUMO
//
// Você faz variáveis ​​usando vare constantes usando let. É preferível usar constantes sempre que possível.
//
// Strings começam e terminam com aspas duplas, mas se você quiser que elas sejam executadas em várias linhas, você deve usar três conjuntos de aspas duplas.
//
// Inteiros contêm números inteiros, duplos contêm números fracionários e booleanos contêm verdadeiro ou falso.
//
// A interpolação de strings permite que você crie strings a partir de outras variáveis ​​e constantes, colocando seus valores dentro de sua string.
//
// O Swift usa inferência de tipo para atribuir um tipo a cada variável ou constante, mas você pode fornecer tipos explícitos, se desejar.
//
// */
//
////declare int value
//var population = 8_000_000
////print(population);
//
////concatenacao de strings
//var score = 36;
//var str = "your score is \(score)";
////print(str);
//
////constante
//let taylor = "swift"
////print(taylor);
//
//
////inferir tipo manualmente
//let pi:Double = 3.14;
//let nome:String = "gabriel rossi";
//let day:Int = 54;
//let happy:Bool = true;
//
//
///*
// 2# DAY --> estudar +
//
// RESUMO
// -----------------------------------------------------------------------------------
// 1: Se você precisa de uma coleção específica e fixa de valores relacionados onde cada item tem uma posição ou nome preciso, você deve usar uma tupla:
//
// let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
//
// -----------------------------------------------------------------------------------
// 2: Se você precisa de uma coleção de valores que devem ser únicos ou precisa ser capaz de verificar se um item específico está lá de forma extremamente rápida, você deve usar um conjunto:
//
// let set = Set(["aardvark", "astronaut", "azalea"])
//
// -----------------------------------------------------------------------------------
// 3: Se você precisa de uma coleção de valores que podem conter duplicatas, ou se a ordem dos seus itens é importante, você deve usar um array:
//
// let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
//
// -----------------------------------------------------------------------------------
// Arrays, conjuntos, tuplas e dicionários permitem armazenar um grupo de itens em um único valor. Cada um deles faz isso de maneiras diferentes, então qual você usa depende do comportamento que você deseja.
// Arrays armazenam itens na ordem em que você os adiciona e você os acessa usando posições numéricas.
// Define os itens da loja sem nenhuma ordem, portanto, você não pode acessá-los usando posições numéricas.
// Tuplas são de tamanho fixo e você pode anexar nomes a cada um de seus itens. Você pode ler itens usando posições numéricas ou usando seus nomes.
// Os dicionários armazenam itens de acordo com uma chave e você pode ler itens usando essas chaves.
// Enums são uma forma de agrupar valores relacionados para que você possa usá-los sem erros de ortografia.
// Você pode anexar valores brutos a enums para que possam ser criados a partir de números inteiros ou strings, ou pode adicionar valores associados para armazenar informações adicionais sobre cada caso.
// */
////array de variaveis de tipo strring
//let jhon:String = "jhon lennon"
//let paul:String = "paul maccartney"
//let george:String = "george harrison"
//let ringo:String = "ringo star"
//
//var beatles = [ jhon , paul , george , ringo]
////print(beatles[0]);
////print(type(of: beatles))
//
//var numeros = [10 ,20 ,30, 40,];
////print(numeros[0]);
//
////sets  NAO TEM ORDEM valor aleatorio
//let colors = Set(["red", "green", "blue", "gray", "purple", "pink"]);
////print(colors.randomElement());
//
////tuples NAO DA PARA ALTERAR UMA TUPLA
//var name = (firstName: "taylor" ,
//            lastName: "swift");
////print(name.0);
////print(name.lastName)
//
////dictionaries
//let favoriteIceCream = [
//    "taylor": "chocolate",
//    "edie": "vanila"
//]
////print(favoriteIceCream["taylor"])
//
//
//var teams = [String: String]()
//
///*
// 3# DAY
// condicional == C
//
// Swift tem operadores para fazer aritmética e para comparação; eles funcionam principalmente como você já sabe.
// Existem variantes compostas de operadores aritméticos que modificam suas variáveis ​​no local: +=, -=, e assim por diante.
// Você pode usar if, elsee else ifpara executar o código com base no resultado de uma condição.
// O Swift possui um operador ternário que combina uma verificação com blocos de código verdadeiro e falso. Embora você possa vê-lo em outro código, eu não recomendaria usá-lo você mesmo.
// Se você tiver várias condições usando o mesmo valor, geralmente é mais fácil de usar switch.
// Você pode fazer intervalos usando ..<e ...dependendo se o último número deve ser excluído ou incluído.
//
//
// //operador ternario
// let firstCard = 11
// let secondCard = 10
// print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
//
//
// //switch case
// var variavel = 0;
// switch variavel {
// case 1:
//     print("111");
// case 2:
//     print("222")
// case 3:
//     print("333")
// default:
//     print("ist me default")
// }
//
// //operador de intervalo
// let score = 85
// switch score {
// case 0..<50:
//     print("You failed badly.")
// case 50..<85:
//     print("You did OK.")
// default:
//     print("You did great!")
// }
// */
//
///*
// 4# DAY
//loops
// Os loops nos permitem repetir o código até que uma condição seja falsa.
// O loop mais comum é for, que atribui cada item dentro do loop a uma constante temporária.
// Se você não precisa da constante temporária forfornecida pelos loops, use um sublinhado para que o Swift possa pular esse trabalho.
// Existem whileloops, que você fornece com uma condição explícita para verificar.
// Embora sejam semelhantes aos whileloops, repeatos loops sempre executam o corpo de seu loop pelo menos uma vez.
// Você pode sair de um único loop usando break, mas se tiver loops aninhados, precisará usar breakseguido por qualquer rótulo que tenha colocado antes do loop externo.
// Você pode pular itens em um loop usando continue.
// Os loops infinitos não terminam até que você peça e são feitos usando while true. Certifique-se de ter uma condição em algum lugar para terminar seus loops infinitos!
//
//
// //for com vetor
// var album = ["the dark side of the moon" , "come together" , "abbey road"]
// for x in 0..<3 {
//     print(" \(album[x]) is on apple music");
// }
//
// //while
// var x = 0;
// while x<=3 {
//     print(x);
//     x+=1;
// }
//
// //do while em swift
// var x=0;
// repeat {
//
//     print(x);
//     x+=1;
// }while x<3;
//
//
// //dar breack em for
// outerLoop: for i in 0...10{
//     print(i);
//     for k in 0...10{
//         if k >= 1 {
//             break outerLoop
//         }else{
//             print(" loop ");
//         }
//     }
// }
//
//
// //pular todos os numeros impares com continue
// for i in 0...10{
//     if i%2 != 0{
//         continue
//     }
//     print(i);
// }
// */
//
//
///*
// 5# DAY
// funcoes
//
// func printHelp(){
//     let constante = "hehehehe";
//
//     print(constante)
// }
// printHelp();
//
//
// func quadrado(x: Int) -> Int{
//     return x * x;
// }
// let numero = quadrado(x: 10);
//
// print (numero)
//
//
//
////definir funcao com dois parametros/ um externo e o outro interno
//func sayHello(to name: String){
//    print(" hello \(name)");
//
//}
//sayHello(to: "GABRIEL");
//
//
// // definir funcao sem nome de parametro
// func test(_ person: String){
//     print("hello \(person)");
// }
// test("gabriel")
//
// */
//
////
////func driving (para: String){
////    print("dirigir para: \(para)");
////
////}
////
////driving(para: "london");
////
////var ll = 0
////
////func kkk(numero: Int){
////    ll = 1;
////}
////
////kkk(numero: 3)
////
////print(ll)
//
////
////struct student{
////
////    var name: String
////    var age: Int
////    var favoriteColor: String
////
////}
////
////var students = student(name: "pedro", age: 19, favoriteColor: "gray");
////students = student(name: "gabriel", age: 19, favoriteColor: "blue");
////
////
////
////print(students);
//
////
////
////struct Sport{
////
////    var name: String
////    var isOlimpcSport: Bool
////
////    var status : String{
////        if isOlimpcSport{
////            return "\(name) is an olimpc sport"
////        }else{
////            return "\(name) ia not an olimpc sport"
////        }
////    }
////
////}
////
////var esporte = Sport(name: "tennis", isOlimpcSport: true)
////print(esporte.status)
//
//struct teste {
//    var quantidade: Int;
//
//
//    func multiplicacao()->Int{
//        return quantidade * 1000;
//    }
//}
//
//
//var teste2 = teste(quantidade: 10);
//
//print(teste2.multiplicacao())
//
//




import Foundation





