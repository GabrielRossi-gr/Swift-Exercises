//
//  PecaView.swift
//  chess
//
//  Created by Gabriel Rossi on 16/05/23.
//

import SwiftUI

struct PecaView: View {
    
    
    @State var position = CGPoint(
        x: 40,
        y: 400)
    
    var body: some View {
    //Image("KnightWhite")
    Image("KnightWhite")
    .frame(width: 1, height: 1)
    .position(position)
    .gesture(
        DragGesture()
            .onChanged{ variavel in
                self.position = variavel.location
            }
    )

    }
}

struct PecaView_Previews: PreviewProvider {
    static var previews: some View {
        PecaView()
    }
}
