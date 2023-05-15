//
//  ContentView.swift
//  chess
//
//  Created by Gabriel Rossi on 19/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationLink{
                GameView()
            }label:{
                Text("Start").font(.largeTitle).bold()
                .foregroundColor(Color.white)
                .padding(.horizontal , 50)
                .padding(.vertical , 30)
                .background(Color.cyan)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.blue, lineWidth: 5)
                )
                
             
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
