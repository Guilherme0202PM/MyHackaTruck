//
//  ContentView.swift
//  Desafio 7
//
//  Created by Student10 on 09/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    @State public var showingSheet = false
    
    var body: some View {
        VStack {
            ScrollView(){
                ForEach(viewModel.estacionamento, id: \.self) { est in
                    
                    Text(est.nomeEstacionamento ?? "Nome desconhcido")
                } // Fim Vstack
                .padding(.horizontal)
            }

        }
        .onAppear {
        viewModel.fetch()
                            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
