//
//  MemoryGame.swift
//  Memorize
//
//  Created by Gabriel Rossi on 22/03/23.
//

import Foundation


struct MemoryGame<CardContent> {
    var cards: Array<Card>

    
    func choose(card: Card){
        print("card choosen: \(card)")
    }
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2))
            cards.append(Card(isFaceUp: false, isMatched: false, content: content, id: pairIndex*2+1))
            
            //video time :: 1:07:01
        }
    }
    
    struct Card: Identifiable{
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
}
