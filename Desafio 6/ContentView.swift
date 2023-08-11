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
    
    @State var jogo = games(id: 1136, title: "Overwatch AHHA 2", thumbnail:"https://www.mmobomb.com/g/1136/thumbnail.jpg", short_description: "Big changes come to the Overwatch formula in this sequel...and so does PvE content, eventually.", game_url: "https://www.mmobomb.com/open/overwatch-2", genre: "Shooter", platform: "PC (Windows)", publisher: "Activision Blizzard King", developer: "Blizzard Entertainment", release_date: "2022-10-04", profile_url: "https://www.mmobomb.com/overwatch-2")
    

    var body: some View {
       
        //@State var lista = [games]
        
        
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.black,.blue, .purple]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()

            
//            AsyncImage(url: URL(string: "https://static.vecteezy.com/ti/fotos-gratis/p1/6504716-abstract-background-gradient-blue-purple-red-you-can-use-this-background-for-your-content-like-as-video-streaming-promotion-gaming-advertise-presentation-etc-foto.jpg")) { fundo in
//                fundo.resizable().frame(width: 500, height: 900)
//            }
//
//        placeholder: {
//            ProgressView()
//        }
            
            
            
            VStack {
                ScrollView(){
                    ForEach(viewModel.jogos, id: \.id) { jogo in
                        Button(action: {
                            self.jogo = jogo
                            showingSheet.toggle()
                            //.sheet(isPresented: $showingSheet)
                        }) {
                            VStack(spacing: 8) {
                                AsyncImage(url: URL(string: jogo.thumbnail ?? "")) { image in
                                    image.resizable().aspectRatio(contentMode: .fill).frame(width: 200, height: 200).cornerRadius(8)
                                        
                                      
                                    
                                    /*
                                        .sheet(isPresented: $showingSheet){
                                            if let selectedJogo = viewModel.selectedJogo{
                                                GameDetailView(jogo: selectedJogo)
                                            }
                                    }//fim da sheet   */
                                }
                            placeholder: {
                                ProgressView()
                            }
                                
                                Text(jogo.title ?? "No Title")
                                    //.font(.headline)
                                    //.lineLimit(2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .font(.system(size: 35))
                                
                               // sheet(isPresented: $showingSheet) {
                                // Conteúdo da folha que você deseja exibir
                                //Text("Sheet content")

                            }
                            
                        }
                        
                    }
                }
                
                
                
                        }  .sheet(isPresented: $showingSheet){
                            
                            GameDetailView(jogo: jogo)
//                                            GameDetailView(jogo: games(id: jogo.id, title: jogo.title, thumbnail:jogo.thumbnail, short_description: jogo.short_description, game_url: jogo.game_url, genre: "Shooter", platform: "PC (Windows)", publisher: "Activision Blizzard King", developer: "Blizzard Entertainment", release_date: "2022-10-04", profile_url: "https://www.mmobomb.com/overwatch-2"))
                    }//fim da sheet // Fim Vstack
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
