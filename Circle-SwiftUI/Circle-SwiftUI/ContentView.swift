//
//  ContentView.swift
//  Circle-SwiftUI
//
//  Created by Gabriel Rossi on 26/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
                .trim(from: 0.0, to: 0.7)
                .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round))
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
