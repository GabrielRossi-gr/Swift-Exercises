//
//  ContentView.swift
//  Memorize
//
//  Created by Gabriel Rossi on 21/03/23.
//
// MVVM
import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    
    var body: some View {
        
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
            }
        }
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    //video time 1:29:34
    
    var body: some View{
        //ZStack organiza as views de tras para frente uma em cima da outra
        ZStack {
            if card.isFaceUp{
                //criar retangulo com cantos arredondaddos "10.0"
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                //.stroke-> coratar o retangulo por dentro deixando so a borda
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 10.0).fill()
                
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}




