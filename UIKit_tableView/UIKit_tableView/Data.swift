//
//  Data.swift
//  UIKit_tableView
//
//  Created by Gabriel Rossi on 11/07/23.
//

import Foundation


struct Data{
    var comida: String
    var numero: Int
    
    init(comida: String, numero: Int) {
        self.comida = comida
        self.numero = numero
    }
}


var comidas: [Data] = [
    Data(comida: "banana", numero: 0),
    Data(comida: "maçã", numero: 1),
    Data(comida: "jaca", numero: 2),
    Data(comida: "uva", numero: 3)
]

