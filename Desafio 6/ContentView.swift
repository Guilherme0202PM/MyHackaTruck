//
//  ContentView.swift
//  Desafio 6
//
//  Created by Student10 on 04/08/23.
//
// https://www.mmobomb.com/api site

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            AsyncImage(url: URL(string: "https://img.freepik.com/vetores-premium/pixel-art-retro-wave-scifi-background-com-nascer-ou-por-do-sol-pixel-art-80s-pixel-art-jogo-de-8-bits_148553-568.jpg?w=2000"))

                
        placeholder: do {
            ProgressView()
            }
            
            /*AsyncImage(url: url) { image in  // <-- here
                     image.resizable()
                 } placeholder: {
                     ProgressView().progressViewStyle(.circular)
                 }*/
        
        VStack {
                //Image(systemName: "globe").imageScale(.large).foregroundColor(.accentColor)
                //Text("Hello, world!")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
