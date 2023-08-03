//
//  Map.swift
//  Desafio 5
//
//  Created by Student10 on 03/08/23.
//

import Foundation
import MapKit

struct Location: Identifiable{
    let id = UUID() //gera um id automatico
    let name: String
    let coordinate: CLLocationCoordinate2D //Uma estrutura que representa as coordenadas geográficas de um ponto no mapa
    let flag: String
    let description: String
}
