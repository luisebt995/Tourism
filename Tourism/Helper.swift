//
//  Helper.swift
//  Tourism
//
//  Created by Luis on 4/4/24.
//

import Foundation

enum Cities{
    case madrid
    case barcelona
    case valencia
    case bilbao
}

func imageResource (city: Cities) -> String {
    var imageFile : String
    
    switch city {
    case .madrid: imageFile = "realmadrid"
    case .barcelona: imageFile = "barcelonafc"
    case .valencia: imageFile = "valenciacf"
    case .bilbao: imageFile = "athleticclub"
    }
    
    return imageFile
}
