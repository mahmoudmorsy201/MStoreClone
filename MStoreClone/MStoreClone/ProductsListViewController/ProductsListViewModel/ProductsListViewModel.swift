//
//  ProductsListViewModel.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 16/04/2021.
//

import Foundation
import Combine


class ProductsListViewModel {
  
    
    var products = CurrentValueSubject<[Product],Never>([Product]())
    var subscibers = Set<AnyCancellable>()
    
    private let networlService: NetworkServiceProtocol
    
    init(productsListService: NetworkServiceProtocol = NetworkService.default) {
        self.networlService = productsListService
    }
    
    public func loadProducts() {
        
        networlService
                .execute(Endpoints.getProductList.resolve(), model: [Product].self) { [weak self] result in
                    guard let self = self else { return }
                    switch result {
                    case .success(let response):
                        self.products.send(response)
            
                    case .failure(let error):
                        print("error is \(error)")
                    }
                }.store(in: &subscibers)
        }
    
}
