//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by peerawat yoouthong on 29/8/2563 BE.
//  Copyright © 2563 ascii112. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject{
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String>{
        let emojis = ["🐶", "🐱", "🐭"]
        return MemoryGame<String>(numberOfPairsOf: emojis.count) { pairsIndex in
               return emojis[pairsIndex]
        }
    }
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
