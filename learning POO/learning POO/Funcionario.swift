//
//  BOT.swift
//  learning POO
//
//  Created by Gabriel Rossi on 28/03/23.
//

import Foundation


class Trabalhador {
    let alforria: Bool = false
    let nome: String
    let salario: Double
    let cargo: Cargos
    
    init(nome: String, salario: Double, cargo: Cargos) {
        self.nome = nome
        self.salario = salario
        self.cargo = cargo
    }
    
}

enum Cargos{
    case programador
    case presidenteDosEstadosUnidos
    case ceo
    case auxiliar
}




//struct Funcionario{
//    let name: String
//    let salario: Double
//    let balas: Int
//    let cargo: Cargos
//
//    func description() -> String{
//        return "..."
//    }
//}
//
//enum Cargos{
//    case gerente
//    case fabrica
//    case atendente
//    case escravo
//}

//class Bot {
//    let name: String
//    let cpf: Int
//    let color: String
//    let power: String
//
//    init(name: String, cpf: Int, color: String, power: String) {
//        self.name = name
//        self.cpf = cpf
//        self.color = color
//        self.power = power
//    }
//
//    func ligar(){
//        print("estou ligado!")
//    }
//    func desligar(){
//        print("desligando...")
//    }
//}
