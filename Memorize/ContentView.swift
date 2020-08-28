//
//  ContentView.swift
//  Memorize
//
//  Created by peerawat yoouthong on 28/8/2563 BE.
//  Copyright © 2563 ascii112. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            ForEach(0..<4){ index in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack{
            if isFaceUp{
                RoundedRectangle(cornerRadius: 10).fill(Color.white)
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                Text("🦋")
            }else{
                RoundedRectangle(cornerRadius: 10).fill()
            }
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
