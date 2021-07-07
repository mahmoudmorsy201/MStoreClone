//
//  ApiClient.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 24/04/2021.
//

import Foundation
import Combine

class ApiClient {
        
    private lazy var baseUrl = "https://mstore-server.herokuapp.com/api/v1/products"
    

    
    
//    public func getData <T : Decodable>(of : T.Type , completion : @escaping (Result<Any , Error>)-> Void) {
//
//        guard let url = URL(string: baseUrl) else {
//            return
//        }
//        let request = URLRequest(url: url)
//        let session = URLSession(configuration: URLSessionConfiguration.default)
//        let task = session.dataTask(with: request) { (data, response, error) in
//            if let error = error {
//                completion(.failure(error))
//            }
//            guard let data = data else {return}
//
//            do {
//                let decoder = JSONDecoder()
//                let results = try decoder.decode(T.self, from: data)
//                completion(.success(results))
//            } catch {
//                completion(.failure(error))
//            }
//        }
//        task.resume()
//    }
    
}
