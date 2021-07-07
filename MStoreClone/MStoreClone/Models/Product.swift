//
//  Product.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 30/06/2021.
//

import Foundation


struct Product: Codable {

    
    
    let richDescription: String
    let imageURL: String
    let imagesArray: [String]
    let size: [String]
    let heights: [String]
    let typeOfProduct: String
    let price: Int
    let rating: Int
    let numberOfReviews: Int
    let isFeature: Bool
    let nameOfProduct: String
    let description: String
    let category: Category
    let countInStock: Int
    let dateCreated: String
    let productId: String
    
    
    
    private enum CodingKeys : String, CodingKey {
        
        case richDescription = "richDescription"
        case imageURL = "image"
        case imagesArray = "images"
        case size = "sizes"
        case heights = "heights"
        case typeOfProduct = "brand"
        case price = "price"
        case rating = "rating"
        case numberOfReviews = "numReviews"
        case isFeature = "isFeatured"
        case nameOfProduct = "name"
        case description = "description"
        case category = "category"
        case countInStock = "countInStock"
        case dateCreated = "dateCreated"
        case productId = "id"
    }
}


