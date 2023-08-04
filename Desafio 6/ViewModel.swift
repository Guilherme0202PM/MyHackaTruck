//
//  ViewModel.swift
//  Desafio 6
//
//  Created by Student10 on 04/08/23.
//

import Foundation
 
class ViewModel : ObservableObject{
    
    @Published var chars : [Hapo] = []
    
    func fetch(){
        guard let url = URL(string: "https://api.disneyapi.dev/character?page=2&pageSize=50") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in guard let data = data, error == nil else{
            return
        }
            do {
                let parsed = try JSONDecoder().decode([Hapo].self, from: data)
                
                DispatchQueue.main.async{
                    self?.chars = parsed
                }
            }catch {
                print(error)
            }
        }
        task.resume
    }
}
