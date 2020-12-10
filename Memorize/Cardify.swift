//
//  Cardify.swift
//  Memorize
//
//  Created by peerawat yoouthong on 10/12/2563 BE.
//  Copyright © 2563 BE ascii112. All rights reserved.
//

import SwiftUI
struct Cardify: ViewModifier{
    var isFaceUp: Bool = false
    
    func body(content: Content) -> some View {
        ZStack{
            if isFaceUp{
                RoundedRectangle(cornerRadius: self.cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: self.cornerRadius).stroke(lineWidth: self.edgeLineWidth)
                content
            }else{
                RoundedRectangle(cornerRadius: self.cornerRadius).fill()
            }
        }
    }
    private let cornerRadius: CGFloat = 10.0
    private let edgeLineWidth: CGFloat = 3
}
extension View{
    func cardify(isFaceUp: Bool) -> some View{
        return self.modifier(Cardify(isFaceUp: isFaceUp))
    }
}
