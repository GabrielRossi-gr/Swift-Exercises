//
//  main.swift
//  ticTacToe
//
//  Created by Gabriel Rossi on 23/03/23.
//

import Foundation
var tabuleiro = [[String]](repeating: [String](repeating: "·", count: 3), count: 3)

var repetir:Bool = true
var jogador1 = ""
var cont = 0
var cont1 = 0
var linha = ""
var coluna = ""

print("vc é o 'X' \n\n");
while(repetir){
  
print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
    //printar tabuleiro
    printTabuleiro(tabuleiro)
    
    print("\n\n");

    //jogador
    jogador()
    teste0(tabuleiro)
    
    //bot
    bot()
    teste1(tabuleiro)

}

print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
//game over
print("GAME OVER\n");
printTabuleiro(tabuleiro)
print("\n\n");


func bot(){
    var rep = true;
    while(rep){
        let linhaBot = Int.random(in: 0..<3)
        let colunaBot = Int.random(in: 0..<3)
        if(tabuleiro[linhaBot][colunaBot] == "·"){
            tabuleiro[linhaBot][colunaBot] = "O"
            rep = false;
        }
    }
}

func printTabuleiro(_ parametro: [[String]]){
    for x in 0..<3{
        for y in 0..<3{
            print("\(tabuleiro[x][y])", terminator: "");
            if(cont <= 1){
                print("|", terminator: "");
                cont += 1;
            }
        }
        if(cont1 <= 1){
            print("\n-----");
            cont1 += 1;
        }
        cont = 0;
    }
    cont1 = 0;
}

func jogador(){
    print("digite a linha: ");
    linha = readLine()!;
    print("digite a coluna")
    coluna = readLine()!;
    tabuleiro[Int(linha)!][Int(coluna)!] = "X"
    print("")
}

func teste0(_ parametro: [[String]]){
    //diagonal
    if(tabuleiro[0][0] == "X" && tabuleiro[1][1] == "X" && tabuleiro[2][2] == "X"){
        return repetir = false
    }
    if(tabuleiro[0][2] == "X" && tabuleiro[1][1] == "X" && tabuleiro[2][0] == "X"){
        return repetir = false
    }
    //linhas
    if(tabuleiro[0][0] == "X" && tabuleiro[0][1] == "X" && tabuleiro[0][2] == "X"){
        return repetir = false
    }
    if(tabuleiro[1][0] == "X" && tabuleiro[1][1] == "X" && tabuleiro[1][2] == "X"){
        return repetir = false
    }
    if(tabuleiro[2][0] == "X" && tabuleiro[2][1] == "X" && tabuleiro[2][2] == "X"){
        return repetir = false
    }
    //colunas
    if(tabuleiro[0][0] == "X" && tabuleiro[1][0] == "X" && tabuleiro[2][0] == "X"){
        return repetir = false
    }
    if(tabuleiro[0][1] == "X" && tabuleiro[1][1] == "X" && tabuleiro[2][1] == "X"){
        return repetir = false
    }
    if(tabuleiro[0][2] == "X" && tabuleiro[1][2] == "X" && tabuleiro[2][2] == "X"){
        return repetir = false
    }
    
}

func teste1(_ parametro: [[String]]){
    //diagonal
    if(tabuleiro[0][0] == "O" && tabuleiro[1][1] == "O" && tabuleiro[2][2] == "O"){
        return repetir = false
    }
    if(tabuleiro[0][2] == "O" && tabuleiro[1][1] == "O" && tabuleiro[2][0] == "O"){
        return repetir = false
    }
    //linhas
    if(tabuleiro[0][0] == "O" && tabuleiro[0][1] == "O" && tabuleiro[0][2] == "O"){
        return repetir = false
    }
    if(tabuleiro[1][0] == "O" && tabuleiro[1][1] == "O" && tabuleiro[1][2] == "O"){
        return repetir = false
    }
    if(tabuleiro[2][0] == "O" && tabuleiro[2][1] == "O" && tabuleiro[2][2] == "O"){
        return repetir = false
    }
    //colunas
    if(tabuleiro[0][0] == "O" && tabuleiro[1][0] == "O" && tabuleiro[2][0] == "O"){
        return repetir = false
    }
    if(tabuleiro[0][1] == "O" && tabuleiro[1][1] == "O" && tabuleiro[2][1] == "O"){
        return repetir = false
    }
    if(tabuleiro[0][2] == "O" && tabuleiro[1][2] == "O" && tabuleiro[2][2] == "O"){
        return repetir = false
    }
    
}
