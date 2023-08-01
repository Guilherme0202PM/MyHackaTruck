//
//  ContentView.swift
//  Desafio 4 Oficial
//
//  Created by Student10 on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    
    let imagem = ["figure.core.training",
                  "figure.cooldown",
                  "figure.boxing",
                  "figure.fencing",
                  "figure.skiing.downhill",
                  "figure.climbing",
                  "figure.core.training",
                  "figure.cooldown",
                  "figure.boxing",
                  "figure.fencing",
                  "figure.skiing.downhill",
                  "figure.climbing",
    ]
    
    var body: some View {
        NavigationStack{
            ZStack{ // ativa o fundo
                
                
                Image("fundo1").resizable()
                    .ignoresSafeArea() // sempre usar para a area ocupar todo o fundo
                
                VStack { // capa inicial
                    ScrollView{ //deixar a tela toda ScrollView
                        
                        Image("caminhao").resizable()
                            .frame(width: 250, height: 230)
                        
                        Text("HackaFM").foregroundColor(.white).font(.system(size: 35))
                        
                        
                        HStack{ // dono do album
                            Image("caminhao").resizable()
                                .frame(width: 50, height: 50)
                            
                            Text("HackaSong").foregroundColor(.white).font(.system(size: 20))
                            Spacer()
                        }
                        VStack{ // lista das musicas
                            
                            ForEach(imagem, id: \.self){
                                i in
                                Image(systemName: "\(i)").font(.system(size: 100))
                                /*
                                 AsyncImage(url: URL(string: "https://vivacoldplay.com/wp-content/uploads/2015/11/CTHS4RZWUAAsMIV.jpg"))
                                 .font(.system(size: 100))*/
                                
                                
                            }
                            
                            /*AsyncImage(url: URL(string: "https://vivacoldplay.com/wp-content/uploads/2015/11/CTHS4RZWUAAsMIV.jpg"))*/
                            
                        }
                        
                    }
                    
                    
                    
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
