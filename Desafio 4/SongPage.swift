//
//  SongPage.swift
//  Desafio 4 Oficiaal
//
//  Created by Student10 on 02/08/23.
//

import Foundation
import SwiftUI

struct SongPage: View{
    let song : Song

    var body: some View{
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
            
            VStack{
                
                AsyncImage(url: URL(string: song.capa)) {
                    song in
                    song.resizable().frame(width: 200, height: 200)
                } placeholder: { //caso a image falhe fica "carregando"
                    ProgressView()
                }
                
                    VStack{
                        Text(song.name).foregroundColor(.white)
                            .font(.system(size: 40))
                        
                        Text(song.artist).foregroundColor(.white).font(.system(size: 25))
                    }
                HStack{
                    Image(systemName: "shuffle").resizable().frame(width: 30, height: 30)
                        .imageScale(.large).padding().offset(x:0 , y: 150)
                        Image(systemName: "backward.end.fill").resizable().frame(width: 30, height: 30)
                        .imageScale(.large).padding().offset(x:0 , y: 150)
                        Image(systemName: "play.fill").resizable().frame(width: 40, height: 40)
                        .imageScale(.large).padding().offset(x:0 , y: 150)
                        Image(systemName: "forward.end.fill").resizable().frame(width: 30, height: 30)
                        .imageScale(.large).padding().offset(x:0 , y: 150)
                        Image(systemName: "repeat").resizable().frame(width: 30, height: 30)
                        .imageScale(.large).padding().offset(x:0 , y: 150)
                }.foregroundColor(.white)
            }
        }
    }
}

struct SongPage_Previews: PreviewProvider {
    static var previews: some View {
        //music(song: Song)
        SongPage (song: Song(id: 1, name: "Viva la Vida", artist: "Coldplay",capa:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtjnJ0wKGRvg2VV3n27H8wwJ2xZPTNQwevVA&usqp=CAU"))

    }
}
