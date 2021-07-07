//
//  EndPoints.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 01/07/2021.
//

public enum Endpoints {
    case getProductList
    case searchProduct
}

public extension Endpoints {
    
    func resolve() -> URLRequestBuilder {
        switch self {
        case .getProductList:
            return ProductsAPIs.getProductsList
        case .searchProduct:
            return ProductsAPIs.searchProduct
        }
    }
}