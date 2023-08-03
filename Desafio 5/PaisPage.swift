//
//  PaisPage.swift
//  Desafio 5
//
//  Created by Student10 on 03/08/23.
//

import SwiftUI

struct PaisPage: View {
    var body: some View {
        Text("Hello, World!")
        /*
        VStack{
            VStack{
                
                AsyncImage(url: URL(string: location.flag)) {
                    song in
                    song.resizable().frame(width: 200, height: 200)
                } placeholder: { //caso a image falhe fica "carregando"
                    ProgressView()
                }
            
            
        }
        /*
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
        } */ */
    } // Var Bory
}
    
    struct PaisPage_Previews: PreviewProvider {
        static var previews: some View {
            PaisPage()
            //PaisPage(location: Location(Location(name: "Uberlandia", coordinate: CLLocationCoordinate2D(latitude: -18.9113, longitude: -48.2622),flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Bandeira_de_Uberl%C3%A2ndia.svg/240px-Bandeira_de_Uberl%C3%A2ndia.svg.png", description: "Uberlândia é um município brasileiro no interior do estado de Minas Gerais, na região conhecida como Triângulo Mineiro, Região Sudeste do país. Com 713 232 habitantes, segundo o Censo 2022 do Instituto Brasileiro de Geografia e Estatística (IBGE), é o 2° município mais populoso de Minas Gerais")
           
        }
    }
    
