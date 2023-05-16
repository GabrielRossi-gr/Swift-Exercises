//
//  ContentView.swift
//  chess
//
//  Created by Gabriel Rossi on 19/04/23.
//

import SwiftUI

struct ContentView: View {
    

    
    
    var body: some View {
        HStack {
            PecaView()
            PecaView()
            PecaView()
            PecaView()
            PecaView()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
