//
//  chessApp.swift
//  chess
//
//  Created by Gabriel Rossi on 19/04/23.
//

import SwiftUI

@main
struct chessApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                //ContentView()
                GameView()
            }
        }
    }
}
