//
//  ContentView.swift
//  Desafio 5
//
//  Created by Student10 on 03/08/23.
//

import SwiftUI
import Foundation //bibliotecas Mapas
import MapKit //bibliotecas Mapas

struct ContentView: View {
    
    let location = [Location(name: "Uberlandia", coordinate: CLLocationCoordinate2D(latitude: -18.9113, longitude: -48.2622),flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Bandeira_de_Uberl%C3%A2ndia.svg/240px-Bandeira_de_Uberl%C3%A2ndia.svg.png", description: "Uberlândia é um município brasileiro no interior do estado de Minas Gerais, na região conhecida como Triângulo Mineiro, Região Sudeste do país. Com 713 232 habitantes, segundo o Censo 2022 do Instituto Brasileiro de Geografia e Estatística (IBGE), é o 2° município mais populoso de Minas Gerais"),
                    Location(name: "Japao", coordinate: CLLocationCoordinate2D(latitude: 35.652832, longitude: 139.839478),flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Bandeira_de_Uberl%C3%A2ndia.svg/240px-Bandeira_de_Uberl%C3%A2ndia.svg.png", description: "Tóquio (em japonês: 東京; romaniz.: Tōkyō, pronunciado: [to̞ːkʲo̞ː] (Sobre este somescutar?·info), literalmente capital do Leste, oficialmente Metrópole de Tóquio (東京都 Tōkyō-to?), é a capital do Japão e uma das 47 prefeituras do país. Situa-se em Honshu, a maior ilha do arquipélago. Em 2015, Tóquio possuía mais de 13,4 milhões de habitantes, cerca de 11% da população do país, e a Região Metropolitana de Tóquio possui mais de 37 milhões de habitantes, o que torna a aglomeração de Tóquio, independentemente de como se define, como a área urbana mais populosa do mundo. Um de seus monumentos mais famosos é a Torre de Tóquio."),]
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.652832, longitude: 139.839478), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    @State public var showingSheet = false
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            /*HStack{
                
                Button("Modo 3") {
                    showingSheet.toggle()
                }
                .sheet(isPresented: $showingSheet) {
                    PaisPage()
                }
                
            }*/ // fim HStack Botoes
        } // fim ZStack Mapa
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/*
 var body: some View {
         ZStack {
             Map(coordinateRegion: $region)
                 .ignoresSafeArea()

             VStack {
                 Spacer()
                 List(location) { loc in
                     Button(action: {
                         // Abra a página correspondente à bandeira
                         showingSheet.toggle()
                     }) {
                         HStack {
                             Image(systemName: "flag") // Use a imagem da bandeira aqui
                                 .foregroundColor(.blue) // Defina a cor da bandeira
                             Text(loc.name)
                         }
                     }
                 }
                 .frame(height: 100)
                 .background(Color.white) // Defina a cor de fundo da lista
             }
         }
     }
 }

 
 */
