import UIKit

//Sets ou Conjuntos são coleções de valores como arrays, exceto que eles têm duas diferenças:
//
//Os itens não são armazenados em nenhuma ordem; eles são armazenados no que é efetivamente uma ordem aleatória.
//Nenhum item pode aparecer duas vezes em um conjunto; todos os itens devem ser exclusivos.

let colors = Set(["red", "green", "blue"])


//Ao observar o valor de colorsdentro da saída do playground, você verá que ele não corresponde à ordem que usamos para criá-lo. Não é realmente uma ordem aleatória , é apenas desordenada – Swift não dá garantias sobre sua ordem. Como eles não estão ordenados, você não pode ler valores de um conjunto usando posições numéricas como faria com arrays.

//Se você tentar inserir um item duplicado em um conjunto, as duplicatas serão ignoradas.
    
