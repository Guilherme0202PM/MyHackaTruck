//
//  ContentView.swift
//  Desafio 7
//
//  Created by Student10 on 09/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            //Text(jogo.title ?? "No Title")
            //Text(estacionamento.vaga)
            //Text(ViewModel.estacionamento)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
