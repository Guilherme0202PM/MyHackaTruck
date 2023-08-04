//
//  ModelDisney.swift
//  Desafio 6
//
//  Created by Student10 on 04/08/23.
//

import Foundation

struct data : Codable {
    let number: Int
    
}

struct number : Codable{
    let id: Int
    let films: films
    let shortFilms: String?
    let tvShows: String?
    let videoGames: String?
    let parkAttraction: String?
    let allies: String?
    let sourceUrl: String
    let name: String
    let imageUrl: String
}

struct films : Codable{
    let number2: Int
}
