//
//  GameView.swift
//  chess
//
//  Created by Gabriel Rossi on 19/04/23.
//

import SwiftUI


struct GameView: View {
    
    let cavalo = Pecas()
    //variavel de estado
    @State var position = CGPoint(x: 200, y: 400)
    
    var body: some View {
        VStack{
            ZStack{
                Color.gray.ignoresSafeArea()
                  
                //Image("KnightWhite")
                    Image("KnightWhite")
                    .frame(width: cavalo.largura, height: cavalo.altura)
                    .position(position)
                    .gesture(
                        DragGesture()
                            .onChanged{ variavel in
                                self.position = variavel.location
                            }
                    )
       
            }
        }
    }
}
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
