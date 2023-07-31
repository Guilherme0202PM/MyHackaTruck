//
//  LupaView.swift
//  Desafio 3.1
//
//  Created by Student10 on 31/07/23.
//

import SwiftUI

struct LupaView: View {
    var body: some View {
        
        ZStack{
            Rectangle().foregroundColor(.blue).scaledToFit().frame(width: 300, height: 300)
            Text("Hello HackaTruck").font(.system(size: 30))
        }
    }
}

struct LupaView_Previews: PreviewProvider {
    static var previews: some View {
        LupaView()
    }
}
