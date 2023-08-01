//
//  ContentView.swift
//  Desafio 4 Oficial
//
//  Created by Student10 on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    
    let song = [Song(id: 1, name: "Viva la Vida", artist: "hi", capa:"show"),
                Song(id: 2, name: "Yellow", artist: "lorena", capa:"show"),
                Song(id: 3, name: "Paradise", artist: "nada", capa:"show"),
                Song(id: 4, name: "A Sky Full of Sky", artist: "boa", capa:"show"),
                
    ]
    
    /*AsyncImage(url: URL(string: "https://vivacoldplay.com/wp-content/uploads/2015/11/CTHS4RZWUAAsMIV.jpg"))*/
    
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
                        
                        VStack{
                            ForEach(song) { song in
                                NavigationLink(destination: Text(song.name)){
                                    Text(song.name)
                                }
                            }
                            
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
