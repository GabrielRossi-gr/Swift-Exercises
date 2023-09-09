//
//  ViewA.swift
//  PopNavigationStack
//
//  Created by Gabriel Rossi on 24/08/23.
//

import SwiftUI


struct ViewA : View {
    @Binding var rootView : RootView
    
    var body: some View {
        VStack {
            Text("View A")
            NavigationLink(destination: ViewB(rootView: $rootView)) {
                Text("Navigate to B")
            }
        }
    }
}


struct ViewA_Previews: PreviewProvider {
    static var previews: some View {
        ViewA()
    }
}
