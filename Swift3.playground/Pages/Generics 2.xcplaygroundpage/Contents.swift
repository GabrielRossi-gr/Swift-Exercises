//: [Anterior](@previous)
//: # Generics
import Foundation

//: De forma similar ao que fazemos com funções podemos
//: criar tipos genéricos para tratar atributos ou métodos
//: de forma independente de tipos.
//:
//: Vamos supor que desejamos criar uma estrutura de pilha,
//: porém não desejamos criar uma para cada tipo possível de dados

class Stack<Element> {
    
    //Cria um array do tipo Element, inicialmente vazio
    private var stack = [Element]()
    private var top = -1
    
    func push(item:Element) {
        stack.append(item)
        top += 1
    }
    
    func pop() -> Element? {
        guard stack.count > 0 else { return nil }
        
        let returnValue = stack[top]
        top -= 1
        
        return returnValue
    }
}

let intStack = Stack<Int>()

intStack.push(item: 3)
intStack.push(item: 5)

intStack.pop()
intStack.pop()
intStack.pop()


let stringStack = Stack<String>()

stringStack.push(item: "Hello")
stringStack.push(item: "World")

stringStack.pop()
stringStack.pop()
stringStack.pop()

//: [Próximo](@next)
