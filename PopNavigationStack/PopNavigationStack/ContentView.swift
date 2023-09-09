//
//  ContentView.swift
//  PopNavigationStack
//
//  Created by Gabriel Rossi on 24/08/23.
//

import SwiftUI
import CoreData


enum RootView {
    case A, C
}

struct ContentView : View {
    @State private var rootView : RootView = .A
    
    var body: some View {
        NavigationView {
            switch rootView {
            case .A:
                ViewA(rootView: $rootView)
            case .C:
                ViewC(rootView: $rootView)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

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

struct ViewC : View {
    @Binding var rootView : RootView
    
    var body: some View {
        VStack {
            Text("View C")
            switch rootView {
            case .A:
                Button(action: {
                    //.C
                    rootView = .C
                }) {
                    Text("Switch this to the root view")
                }
            case .C:
                Text("I'm the root view ....")
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
