//
//  GameDetailView.swift
//  Desafio 6
//
//  Created by Student10 on 07/08/23.
//

import SwiftUI

struct GameDetailView: View {
    var jogo: games
    
    var body: some View {
        TabView {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.black, .blue,.blue,.gray]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()


                VStack {
                    AsyncImage(url: URL(string: jogo.thumbnail ?? "")) { image in
                        image
                            .resizable().frame(width: 300, height: 300).cornerRadius(8)
                        
                    } placeholder: {
                        Text("ERRADO")//put your placeholder here
                    }
                    //.aspectRatio(contentMode: .fit)
                    //.cornerRadius(8)
                    
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
        }
        .navigationBarTitle(jogo.title ?? "Game Details")
    }
}


struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GameDetailView(jogo: games(id: 1136, title: "Overwatch AHHA 2", thumbnail:"https://www.mmobomb.com/g/1136/thumbnail.jpg", short_description: "Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.", game_url: "https://www.mmobomb.com/open/overwatch-2", genre: "Shooter", platform: "PC (Windows)", publisher: "Activision Blizzard King", developer: "Blizzard Entertainment", release_date: "2022-10-04", profile_url: "https://www.mmobomb.com/overwatch-2"))


    }
}

