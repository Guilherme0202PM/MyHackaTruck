//
//  PhotoView.swift
//  Desafio 3.1
//
//  Created by Student10 on 31/07/23.
//

import SwiftUI

struct PhotoView: View {
    let imagem = ["figure.core.training",
                  "figure.cooldown",
                  "figure.boxing",
                  "figure.fencing",
                  "figure.skiing.downhill",
                  "figure.climbing"]
    
    var body: some View {
        
        ScrollView{
            ForEach(imagem, id: \.self){
                i in
                Image(systemName: "\(i)").font(.system(size: 200))
                
            }
        }
    }
    
}
        
        struct PhotoView_Previews: PreviewProvider {
            static var previews: some View {
                PhotoView()
            }
        }
