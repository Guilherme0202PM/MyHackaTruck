//
//  HomeView.swift
//  Desafio 3.1
//
//  Created by Student10 on 31/07/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        
        List(0...50, id: \.self){
            Text("Item \($0)")
        }
       /* ForEach(0..<50){index in
            Text("Hello, World!")

        }*/

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
