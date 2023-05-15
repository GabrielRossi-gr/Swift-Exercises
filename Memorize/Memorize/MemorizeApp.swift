//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Gabriel Rossi on 21/03/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            
            
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
