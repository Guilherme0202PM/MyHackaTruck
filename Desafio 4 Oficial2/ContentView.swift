//
//  ContentView.swift
//  Desafio 4 Oficial
//
//  Created by Student10 on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    
    let song = [Song(id: 1, name: "Viva la Vida", artist: "Coldplay",capa:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtjnJ0wKGRvg2VV3n27H8wwJ2xZPTNQwevVA&usqp=CAU"),
                Song(id: 2, name: "Yellow", artist: "Coldplay",
                     capa:"https://i1.sndcdn.com/artworks-000402447507-zyjqsu-t500x500.jpg"),
                     Song(id: 3, name: "Chandelier", artist: "Sia", capa:"https://i.ytimg.com/vi/2vjPBrBU-TM/hq720.jpg?sqp=-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLCrBoC7iIkACGu4zzJmcRrVdVS04Q"),
                     Song(id: 4, name: "A Sky Full of Sky", artist: "Coldplay", capa:"https://vivacoldplay.com/wp-content/uploads/2015/11/CTHS4RZWUAAsMIV.jpg"),
                Song(id: 5, name: "Viva la Vida", artist: "Coldplay",capa:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtjnJ0wKGRvg2VV3n27H8wwJ2xZPTNQwevVA&usqp=CAU"),
                            Song(id: 6, name: "Yellow", artist: "Coldplay",
                                 capa:"https://i1.sndcdn.com/artworks-000402447507-zyjqsu-t500x500.jpg"),
                                 Song(id: 7, name: "Chandelier", artist: "Sia", capa:"https://i.ytimg.com/vi/2vjPBrBU-TM/hq720.jpg?sqp=-oaymwEjCOgCEMoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLCrBoC7iIkACGu4zzJmcRrVdVS04Q"),
                                 Song(id: 8, name: "A Sky Full of Sky", artist: "Coldplay", capa:"https://vivacoldplay.com/wp-content/uploads/2015/11/CTHS4RZWUAAsMIV.jpg"),
                     
                     ]
                     
let sugestao = [Sugestao(id: 1, albumCover: "Viva la Vida", albumName:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtjnJ0wKGRvg2VV3n27H8wwJ2xZPTNQwevVA&usqp=CAU")]
                     
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
                                .frame(width: 40, height: 40)
                            
                            Text("HackaSong").foregroundColor(.white).font(.system(size: 20))
                            Spacer()
                        }
                        
                        VStack{ // nossa lista de musicas
                            ForEach(song) { song in //ele percorre meu vetor
                                
                                HStack{
                                AsyncImage(url:
                                            URL(string: song.capa)) {
                                    song in
                                    song.resizable().frame(width: 60, height: 60)
                                    
                                    
                                } placeholder: { //caso a image falhe fica "carregando"
                                    ProgressView()
                                }
                                    NavigationLink(destination: Text(song.name)){ //nome vira link
                                        VStack{
                                        Text(song.name).foregroundColor(.white)
                                            .font(.system(size: 20))
                                      
                                        
                                   
                                            Text(song.artist).foregroundColor(.white).font(.system(size: 15))
                                            
                                        }
                                        Spacer()
                                    }
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



