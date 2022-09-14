//
//  ContentView.swift
//  emojis
//
//  Created by Shahad on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var emojis = ["🥰"," 🥸","🤪","🤯", "😤","🥶","😇","🥱", "🤧","🤬"]
    @State var W = ""
    var body: some View {
        VStack {
            
            Text("اختار الايموجي اللي يعبر عنك اليوم").font(.largeTitle).multilineTextAlignment(.center).padding()
            Text(W).font(.system(size: 90))
            
            
            ScrollView(.horizontal){
            
                HStack{
                    ForEach(emojis, id: \.self ) { emoji in
                        Text(emoji)
                            .font(.system(size: 50))
                            
                            .onTapGesture {
                                W = emoji
                            }
                            
                        
                    }
                }
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
