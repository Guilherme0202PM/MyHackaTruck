//
//  PaisPage.swift
//  Desafio 5
//
//  Created by Student10 on 03/08/23.
//

import SwiftUI



struct PaisPage: View {
    //@Binding var local
    var body: some View {
        Text("Hello, World!")
        
        /*HStack{
            ForEach(location){ local in
                Text(local.name).foregroundColor(.white)
                
            }*/
            
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
            
            
            
        //}
    } // Var Bory
}
    
    struct PaisPage_Previews: PreviewProvider {
        static var previews: some View {
            PaisPage()
            //PaisPage(location: Location(Location(name: "Uberlandia", coordinate: CLLocationCoordinate2D(latitude: -18.9113, longitude: -48.2622),flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Bandeira_de_Uberl%C3%A2ndia.svg/240px-Bandeira_de_Uberl%C3%A2ndia.svg.png", description: "Uberlândia é um município brasileiro no interior do estado de Minas Gerais, na região conhecida como Triângulo Mineiro, Região Sudeste do país. Com 713 232 habitantes, segundo o Censo 2022 do Instituto Brasileiro de Geografia e Estatística (IBGE), é o 2° município mais populoso de Minas Gerais")
           
        }
    }
    
