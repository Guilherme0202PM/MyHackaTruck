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
                    Location(name: "Japao", coordinate: CLLocationCoordinate2D(latitude: 35.652832, longitude: 139.839478),flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/250px-Flag_of_Japan.svg.png", description: "Tóquio (em japonês: 東京; romaniz.: Tōkyō, pronunciado: [to̞ːkʲo̞ː] (Sobre este somescutar?·info), literalmente capital do Leste, oficialmente Metrópole de Tóquio (東京都 Tōkyō-to?), é a capital do Japão e uma das 47 prefeituras do país. Situa-se em Honshu, a maior ilha do arquipélago. Em 2015, Tóquio possuía mais de 13,4 milhões de habitantes, cerca de 11% da população do país, e a Região Metropolitana de Tóquio possui mais de 37 milhões de habitantes, o que torna a aglomeração de Tóquio, independentemente de como se define, como a área urbana mais populosa do mundo. Um de seus monumentos mais famosos é a Torre de Tóquio."),Location(name: "França", coordinate: CLLocationCoordinate2D(latitude: 46.2192649, longitude: 2.0517),flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Flag_of_France_%281794%E2%80%931815%2C_1830%E2%80%931974%29.svg/250px-Flag_of_France_%281794%E2%80%931815%2C_1830%E2%80%931974%29.svg.png", description: "Pais Legal"),
                    Location(name: "Australia", coordinate: CLLocationCoordinate2D(latitude: 35.652832, longitude: 139.839478),flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/250px-Flag_of_Australia_%28converted%29.svg.png", description: "Tóquio (em japonês: 東京; romaniz.: Tōkyō, pronunciado: [to̞ːkʲo̞ː] (Sobre este somescutar?·info), literalmente capital do Leste, oficialmente Metrópole de Tóquio (東京都 Tōkyō-to?), é a capital do Japão e uma das 47 prefeituras do país. Situa-se em Honshu, a maior ilha do arquipélago. Em 2015, Tóquio possuía mais de 13,4 milhões de habitantes, cerca de 11% da população do país, e a Região Metropolitana de Tóquio possui mais de 37 milhões de habitantes, o que torna a aglomeração de Tóquio, independentemente de como se define, como a área urbana mais populosa do mundo. Um de seus monumentos mais famosos é a Torre de Tóquio."),]
    
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -18.9113, longitude: -48.2622), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    @State public var showingSheet = false
    
    @State private var region_aux: String = ""
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            VStack{
                Text("World Map").foregroundColor(.black).font(.system(size: 40))
                Text("\(region_aux)")
                Spacer()
                
                HStack{
                    
                    ForEach(location){ local in
                        Button(local.name) {
                            region = MKCoordinateRegion(center: local.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
                            
                            //aux = local
                            
                            showingSheet.toggle()
                        }
                        .sheet(isPresented: $showingSheet) {
                            //PaisPage(local: $aux)
                            //PaisPage()
                            
                            Text("\(local.name)").foregroundColor(.black).font(.system(size: 40))
                            AsyncImage(url: URL(string: local.flag)) { image in
                            image.resizable().frame(width: 350, height: 200)
                            } placeholder: {
                            ProgressView()
                            }
                            
                            Text("\(local.description)").foregroundColor(.black).font(.system(size: 20))
                            
                            
                        }
                        
                    }
                    
                    /* HStack {
                     ForEach(location) { location in
                     Button(action: {
                     selectedCoordinate = location.coordinate
                     }) {
                     AsyncImage(url: URL(string: location.flag)) { image in
                     image.resizable().frame(width: 100, height: 50)
                     } placeholder: {
                     ProgressView()
                     }
                     }.buttonStyle(.plain)
                     
                     }*/
                    
                    
                    
                } // fim HStack Botoes
            } // VStack
        } // fim ZStack Mapa
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
