//
//  ContentView.swift
//  Desafio 3.1
//
//  Created by Student10 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
        
            VStack {
                NavigationLink(destination: Pag1View()){
                    Text("Modo 1")
                    
                }
                
                NavigationLink(destination: Pag2View()){
                    Text("Modo 2")

                }
                
                NavigationLink(destination: Pag3View()){
                    Text("Modo 3")

                }
                
            }
            
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



