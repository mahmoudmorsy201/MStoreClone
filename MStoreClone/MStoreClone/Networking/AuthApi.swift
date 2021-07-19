//
//  AuthApi.swift
//  MStoreClone
//
//  Created by iambavly on 7/12/21.
//

import Foundation


import Alamofire

enum AuthApi: URLRequestBuilder {
    case logIn
    case register
}

extension AuthApi {
    var path: String {
        switch self {
        case .logIn:
            return Path.Auth.login
        case .register:
            return Path.Auth.register

        }
    }
}

extension AuthApi {
    func parameter(dict : [String:String])->Parameters{
        return dict
    }
    
    
    var parameters: Parameters? {
        switch self {
        case .logIn:
            return [:]
        case .register:
            return [:]

        }
    }
}

extension AuthApi {
    var method: HTTPMethod {
        switch self {
        case .logIn:
            return HTTPMethod.post
        case .register:
            return HTTPMethod.post

        }
    }
}
