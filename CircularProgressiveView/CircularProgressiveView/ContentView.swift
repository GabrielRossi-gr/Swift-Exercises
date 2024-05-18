//
//  ContentView.swift
//  CircularProgressiveView
//
//  Created by Gabriel Rossi on 08/09/23.
//

import SwiftUI


struct ContentView: View {
    
    @State var valueProgress: Float = 0.1
    @State var text1 = "I'm Title"
    @State var text2 = "Subtitle"
    
    
    let backgroundGradient = LinearGradient(
        colors: [Color.orange, Color.yellow],
        startPoint: .top, endPoint: .bottom)

    

    var body: some View {
        ZStack{
            backgroundGradient
                .ignoresSafeArea()
            VStack {
                
                
                
                ///call circular progressive view
                CircularProgressiveView(progressNumber: valueProgress, title:text1, subTitle:text2)
                    .frame(width: 330)
                
                
                
                
                
                
                ///exemple button cont +1
                Button(action: {
                    valueProgress += 0.1
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 150, height: 80)
                            
                        Text("Cont +1")
                            .font(.system(.title2))
                            .bold()
                            .foregroundColor(.white)
                    }
                })//
                .padding(60)
                
                
            }
        }
        
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
