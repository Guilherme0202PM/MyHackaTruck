//
//  Pag2View.swift
//  Desafio 3.2
//
//  Created by Student10 on 31/07/23.
//

import SwiftUI

struct Pag2View: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Edilson")
                Text("Hackatruck.com.br")
                NavigationLink(destination: Pag4View()){
                    Text("Acesse Tela")
                }
            }
        }
    }
}

struct Pag2View_Previews: PreviewProvider {
    static var previews: some View {
        Pag2View()
    }
}
