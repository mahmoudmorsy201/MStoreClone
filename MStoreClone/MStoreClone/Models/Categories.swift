//
//  Categories.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 07/07/2021.
//

import Foundation

struct Categories: Codable {
    let idPrdouct: String
    let productType: String

    
    private enum CodingKeys : String, CodingKey {
        
        case idPrdouct = "id"
        case productType = "name"
        
    }
    
}
