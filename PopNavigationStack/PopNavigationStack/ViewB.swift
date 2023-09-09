//
//  ViewB.swift
//  PopNavigationStack
//
//  Created by Gabriel Rossi on 24/08/23.
//

import SwiftUI
struct ViewB : View {
    @Binding var rootView : RootView
    
    var body: some View {
        VStack {
            Text("View B")
            NavigationLink(destination: ViewC(rootView: $rootView)) {
                Text("Navigate to C")
            }
            Button(action: {
                rootView = .C
            }) {
                Text("Navigate to C as root view")
            }
        }
    }
}


struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
