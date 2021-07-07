//
//  ProductsAPI.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 01/07/2021.
//

import Foundation


import Alamofire

enum ProductsAPIs: URLRequestBuilder {
    case getProductsList
    case searchProduct
}

extension ProductsAPIs {
    var path: String {
        switch self {
        case .getProductsList:
            return Path.Products.productList
        case .searchProduct:
            return Path.Products.searchProduct
        }
    }
}

extension ProductsAPIs {
    var parameters: Parameters? {
        switch self {
        case .getProductsList:
            return [:]
        case .searchProduct:
            return [:]
        }
    }
}

extension ProductsAPIs {
    var method: HTTPMethod {
        switch self {
        case .getProductsList:
            return HTTPMethod.get
        case .searchProduct:
            return HTTPMethod.get
        }
    }
}
