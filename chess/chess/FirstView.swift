//
//  FirstView.swift
//  chess
//
//  Created by Gabriel Rossi on 16/05/23.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            NavigationLink{
                ContentView()
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

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
