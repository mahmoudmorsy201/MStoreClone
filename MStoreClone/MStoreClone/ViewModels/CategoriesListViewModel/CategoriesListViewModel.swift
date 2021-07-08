//
//  CategoriesListViewModel.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 16/04/2021.
//

import Foundation
import Combine


class CategoriesListViewModel {
    
    
    var categories = CurrentValueSubject<[Categories],Never>([Categories]())
    var products = CurrentValueSubject<[Product],Never>([Product]())
    var subscribers = Set<AnyCancellable>()
    
    private let networlService: NetworkServiceProtocol
    
    init(productsListService: NetworkServiceProtocol = NetworkService.default) {
        self.networlService = productsListService
    }
    
    public func loadCategories() {
        networlService
            .execute(Endpoints.getCategories.resolve(), model: [Categories].self) { [weak self] result in
                guard let self = self else { return }
                switch result {
                case .success(let response):
                    self.categories.send(response)
                case .failure(let error):
                    print("error is \(error)")
                }
            }.store(in: &subscribers)
    }
    
    
    public func loadAllProducts() {
        networlService
            .execute(Endpoints.getProductList.resolve(), model: [Product].self) {[weak self] (result) in
                guard let self = self else { return }
                switch result {
                case .success(let response):
                    self.products.send(response)
                    self.mapProductsByCategoryId()
                case .failure(let error):
                    print("error is\(error)")
                }
            }.store(in: &subscribers)
    }
    
    private func mapProductsByCategoryId() {
    
    }
    
}
