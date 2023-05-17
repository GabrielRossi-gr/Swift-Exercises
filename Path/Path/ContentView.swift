//
//  ContentView.swift
//  PatApp
//
//  Created by Gabriel Rossi on 16/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Path{ path in
    //            path.move(to: CGPoint(x:200, y:30))
                path.move(to: CGPoint(x:100, y:100))
                path.addLine(to: CGPoint(x: 300, y: 100))
    //            path.addLine(to: CGPoint(x: 100, y: 600))
            }
            .stroke(.red, lineWidth: 3)
                
        }
        .border(Color.red)
  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

