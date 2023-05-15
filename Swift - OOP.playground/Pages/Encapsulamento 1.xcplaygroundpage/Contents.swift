//: [Anterior](@previous)
//: # Swift - OOP
//:
//: ## Encapsulamento

//: Um dos conceitos fundamentais de orientação a objetos é a divisão de responsabilidades,
//: onde cada elemento (tipo de dado) é responsável por manter suas informações e estado. Isto
//: é importante para evitar "efeitos colaterias", onde a alteração de um estado afeta outros
//: gerando comportamentos não desejados, o que é uma fonte muito grande de *bugs*.
//:
//: Orientação a objetos implementa este conceito através do *encapsulamento*, uma forma de
//: definir quais trechos de códigos pode alterar determinado valor, criando assim um controle
//: de acesso.
//:
//: Em Swift o conceito de módulo é muito importante. Ele define uma unidade distribuível
//: de código, seja ela uma aplicação ou uma biblioteca/*framework*. Este conceito é importante
//: nas definições de acesso associadas ao encapsulamento.
//:
//: O controle de acesso pode ser definido para entidades (classes, estruturas, enumerações) e
//: para seus componentes (ex: propriedades, métodos, inicializadores etc.) através de um conjunto
//: de palavras chave.Os níveis de acesso possível são:
//:
//: - *open* ou *public* - Os elementos com este modificador são acessíveis por qualquer elemento
//: de código no mesmo módulo ou mesmo em módulos que "importem" este módulo (por exemplo: um
//: aplicativo que use a biblioteca onde este elemento está). A palavra chave *open* diferencia-se
//: apenas para classes e está associada à herança: classes *open* podem ser herdadas por classes
//: criadas fora do seu módulo de origem, enquanto classes *public* só podem ser herdadas por
//: classes do mesmo módulo.
//: - *internal* - Estes elementos são acessíveis por qualquer elemento dentro do seu módulo, mas
//: não por entidades externas a ele, mesmo que importem o módulo onde ele se encontra.
//: - *fileprivate* - Estes elementos são acessíveis apenas no arquivo de código fonte ao qual pertencem.
//: - *private* - Estes elementos são de acesso privativo a entidade que o declara.
//:
//: O nível de acesso mais amplo é *open* e o mais restrito é *private* ,segundo a ordem da lista
//: acima.

//: [Próximo](@next)

