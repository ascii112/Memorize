//
//  Cardify.swift
//  Memorize
//
//  Created by peerawat yoouthong on 10/12/2563 BE.
//  Copyright © 2563 BE ascii112. All rights reserved.
//

import SwiftUI
struct Cardify: AnimatableModifier{
    var rotation: Double
    init(isFaceUp: Bool) {
        rotation  = isFaceUp ? 0 : 180
    }
    var isFaceUp: Bool{
        rotation < 90
    }
    
    var animatableData: Double{
        get {return rotation}
        set {rotation = newValue}
    }
    func body(content: Content) -> some View {
        ZStack{
            Group{
                RoundedRectangle(cornerRadius: self.cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: self.cornerRadius).stroke(lineWidth: self.edgeLineWidth)
                content
            }.opacity(isFaceUp ? 1 : 0)
                RoundedRectangle(cornerRadius: self.cornerRadius).fill()
                    .opacity(isFaceUp ? 0 : 1)
        }
        .rotation3DEffect(
            Angle.degrees(rotation),
            axis: (0,1,0))
    }
    private let cornerRadius: CGFloat = 10.0
    private let edgeLineWidth: CGFloat = 3
}
extension View{
    func cardify(isFaceUp: Bool) -> some View{
        return self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
