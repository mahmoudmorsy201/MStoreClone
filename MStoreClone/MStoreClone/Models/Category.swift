//
//  Category.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 03/07/2021.
//

import Foundation

struct Category: Codable,Hashable,Equatable {
    let idPrdouct: String
    let productType: String
    let v: Int?
    
    private enum CodingKeys : String, CodingKey {
        
        case idPrdouct = "_id"
        case productType = "name"
        case v = "__v"
        
    }
    
}
