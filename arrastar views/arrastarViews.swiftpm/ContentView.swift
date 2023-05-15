//
//  GameView.swift
//  chess
//
//  Created by Gabriel Rossi on 19/04/23.
//

import SwiftUI


struct ContentView: View {
    
    //variavel de estado
    @State var position1 = CGPoint(x: 200, y: 400)
    
    var body: some View {
        VStack{
   
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 60, height: 60)
                //metodo que define posiçao(atualiza toda vez que é alterado)
                .position(position1)
                //captura os gestos
                .gesture(
                    //captura o gesto de arrastar
                    DragGesture()
                        //em quanto arrasta
                        .onChanged{ variavel in
                            self.position1 = variavel.location
                        }
                )
            
        }
    }
}
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
