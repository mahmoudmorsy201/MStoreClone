//
//  Service.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 01/07/2021.
//

import Alamofire
import Combine

public protocol NetworkServiceProtocol: class {
    func execute<T: Codable>(_ urlRequest: URLRequestBuilder, model: T.Type, completion: @escaping (Result<T, AFError>) -> Void) -> AnyCancellable
}

public extension NetworkServiceProtocol {
    func execute<T: Codable>(_ urlRequest: URLRequestBuilder, model: T.Type, completion: @escaping (Result<T, AFError>) -> Void) -> AnyCancellable {
        
        return AF.request(urlRequest)
            .publishDecodable(type: T.self)
            .sink { result in
                if let value = result.value {
                    completion(Result.success(value))
                } else if let error = result.error {
                    completion(Result.failure(error))
                }
            }
    }
}

public class NetworkService: NetworkServiceProtocol {
    public static let `default`: NetworkServiceProtocol = {
        var service = NetworkService()
        return service
    }()
}
