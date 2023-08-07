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
                            // Implementar ação para levar para a TabView com as informações detalhadas
                        }) {
                            VStack(spacing: 8) {
                                AsyncImage(url: URL(string: jogo.thumbnail ?? "")) { image in
                                    image.resizable().aspectRatio(contentMode: .fill).frame(width: 250, height: 250).cornerRadius(8)
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
