//
//  ModalEstacionamento.swift
//  Desafio 7
//
//  Created by Student10 on 09/08/23.
//

import Foundation

struct estacionamento : Codable{
    let id: Int?
    let nomeEstacionamento: String?
    let endereco: String?
    let vaga: Int?
    let game_url: String?
    let carro : [carro]
}

struct carro : Codable{
    let modelo : String?
    let ano : Int?
    let cor : String?
    let preco : Double?
}
