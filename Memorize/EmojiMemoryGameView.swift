//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by peerawat yoouthong on 28/8/2563 BE.
//  Copyright © 2563 ascii112. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {

        Grid(viewModel.cards){ card in
            CardView(card: card).onTapGesture { self.viewModel.choose(card: card) }
            .padding(5)
        }
        .padding()
        .foregroundColor(Color.orange)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader{ geometry in
            self.body(for: geometry.size)
        }
    }
    
    func body(for size: CGSize) -> some View{
        ZStack{
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: self.cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: self.cornerRadius).stroke(lineWidth: self.edgeLineWidth)
                Text(self.card.content)
            }else{
                if !card.isMatched{
                    RoundedRectangle(cornerRadius: self.cornerRadius).fill()
                }
            }
        }
        .font(Font.system(size: min(size.width, size.height) * self.fontScaleFactor))
    }
    
    let cornerRadius: CGFloat = 10.0
    let edgeLineWidth: CGFloat = 3
    let fontScaleFactor: CGFloat = 0.75
    
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
