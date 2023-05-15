//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Gabriel Rossi on 22/03/23.
//

import SwiftUI



class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String>{
        
        let emojis: Array<String> = ["👻","🎃",]
        return MemoryGame<String>(numberOfPairOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }
    }
 
    //MARK: -Access to the model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }

    
    
    //MARK: -Intents(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}





