//
//  ModalEstacionamento.swift
//  Desafio 7
//
//  Created by Student10 on 09/08/23.
//

import Foundation

struct Estacionamento : Codable{
    let id: Int?
    let nomeEstacionamento: String?
    let endereco: String?
    let vaga: Int?
    let game_url: String?
    let carro : [Carro]
}

struct Carro : Codable{
    let modelo : String?
    let ano : Int?
    let cor : String?
    let preco : Double?
}
