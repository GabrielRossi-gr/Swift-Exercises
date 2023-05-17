
import UIKit

//As tuplas permitem que você armazene vários valores juntos em um único valor. Isso pode soar como arrays, mas tuplas são diferentes:
//
//Você não pode adicionar ou remover itens de uma tupla; eles são de tamanho fixo.
//Você não pode alterar o tipo de itens em uma tupla; eles sempre têm os mesmos tipos com os quais foram criados.
//Você pode acessar itens em uma tupla usando posições numéricas ou nomeando-os, mas o Swift não permite que você leia números ou nomes que não existem.
//As tuplas são criadas colocando vários itens entre parênteses, assim:

var name = (first: "Taylor", last: "Swift")


//Você então acessa os itens usando posições numéricas a partir de 0:
name.0


//Ou você pode acessar itens usando seus nomes:
name.first


//Lembre-se, você pode alterar os valores dentro de uma tupla depois de criá-la, mas não os tipos de valores. Portanto, se você tentar mudar namepara ser, (first: "Justin", age: 25)receberá um erro.

