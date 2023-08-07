//
//  GameDetailView.swift
//  Desafio 6
//
//  Created by Student10 on 07/08/23.
//
/*
import SwiftUI

struct GameDetailView: View {
    var jogo: games
    
    var body: some View {
        TabView {
            VStack {
                AsyncImage(url: URL(string: jogo.thumbnail ?? "")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                }
                Text(jogo.title ?? "No Title")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                Text(jogo.short_description ?? "No description available")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                // Add more information as needed
            }
            .tabItem {
                Label("Details", systemImage: "info.circle")
            }
            
            // Add more tabs with different information views if needed
            
        }
        .navigationBarTitle(jogo.title ?? "Game Details")
    }
}


struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GameDetailView()
    }
}
*/
