//
//  ContentView.swift
//  Desafio 6
//
//  Created by Student10 on 04/08/23.
//
// https://www.mmobomb.com/api site

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State public var showingSheet = false

    var body: some View {
       
        //@State var lista = [games]
        
        
        ZStack{
            
            AsyncImage(url: URL(string: "https://img.freepik.com/vetores-premium/pixel-art-retro-wave-scifi-background-com-nascer-ou-por-do-sol-pixel-art-80s-pixel-art-jogo-de-8-bits_148553-568.jpg?w=2000")) { fundo in
                fundo.resizable().frame(width: 500, height: 900)
            }
        placeholder: {
            ProgressView()
        }
            
            
            
            VStack {
                ScrollView(){
                    ForEach(viewModel.jogos, id: \.id) { jogo in
                        Button(action: {
                            
                            showingSheet.toggle()
                            //.sheet(isPresented: $showingSheet)
                        }) {
                            VStack(spacing: 8) {
                                AsyncImage(url: URL(string: jogo.thumbnail ?? "")) { image in
                                    image.resizable().aspectRatio(contentMode: .fill).frame(width: 250, height: 250).cornerRadius(8)
                                        
                                        .sheet(isPresented: $showingSheet){
                                        GameDetailView(jogo: games(id: 1136, title: "Overwatch 2", thumbnail:"https://www.mmobomb.com/g/1136/thumbnail.jpg", short_description: "Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.", game_url: "https://www.mmobomb.com/open/overwatch-2", genre: "Shooter", platform: "PC (Windows)", publisher: "Activision Blizzard King", developer: "Blizzard Entertainment", release_date: "2022-10-04", profile_url: "https://www.mmobomb.com/overwatch-2"))
                                    }//fim da sheet
                                }
                            placeholder: {
                                ProgressView()
                            }
                                
                                Text(jogo.title ?? "No Title")
                                    //.font(.headline)
                                    //.lineLimit(2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 35))
                                
                               // sheet(isPresented: $showingSheet) {
                                // Conteúdo da folha que você deseja exibir
                                //Text("Sheet content")

                            }
                            
                        }
                        
                    }
                }
                
                
                
                        } // Fim Vstack
            .padding(.horizontal)
                    }
                    .onAppear {
                        viewModel.fetch()
                    }
                }
            }

            
            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
