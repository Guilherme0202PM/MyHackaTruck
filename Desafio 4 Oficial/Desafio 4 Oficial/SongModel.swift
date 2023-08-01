//
//  SongModel.swift
//  Desafio 4 Oficial
//
//  Created by Student10 on 01/08/23.
//


 import Foundation
 
 //ScrollView Horizontal
 struct Sugestao: Identifiable{
 var id:  Int
 var albumCover: String
 var albumName: String
 }
 
 //Lista principal
 struct Song: Identifiable{
 var id: Int
 var name: String
 var artist: String
 var capa: String
 }
 
