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
            
            TabView{
                HomeView() // novo arquivo //command n -> SwiftUI View
                    .badge(2) // faz aparecer as notificacoes
                    .tabItem{
                        Label("House", systemImage: "house")//nome e o nome do icone
                    }
                
                LupaView()
                    .tabItem{
                        Label("", systemImage: "magnifyingglass")
                    }
                
                Text("House")
                    .tabItem{
                        Label("Photo", systemImage: "photo.fill")
                    }
                
                Text("House")
                    .tabItem{
                        Label("Mensage", systemImage: "")
                    }
                
                Text("House")
                    .tabItem{
                        Label("Profile", systemImage: "person.circle.fill")
                    }
                
            }
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
