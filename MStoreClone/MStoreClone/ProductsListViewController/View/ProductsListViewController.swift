//
//  ProductsListViewController.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 16/04/2021.
//

import UIKit
import Combine
import JGProgressHUD

class ProductsListViewController: UIViewController {
    @IBOutlet weak var productsListTableView: UITableView! {
        didSet {
            productsListTableView.delegate = self
            productsListTableView.dataSource = self
        }
    }
    
    let hud = JGProgressHUD()
    let productsListViewModel = ProductsListViewModel()
    var bag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        productsListViewModel.loadProducts()
        observeProductsViewModel()
    }
    
    private func observeProductsViewModel() {
        hud.textLabel.text = "Loading"
        hud.show(in: self.view)
        productsListViewModel.products
            .sink(receiveCompletion: { _ in },
                  receiveValue: {[weak self] (products) in
            DispatchQueue.main.async {
                self?.hud.dismiss()
                self?.productsListTableView.reloadData()
            }
        }).store(in: &bag)
        
    }
}

extension ProductsListViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsListViewModel.products.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ProductsListTableViewCell.self)) as? ProductsListTableViewCell else {
            return UITableViewCell()
        }
        
        configureProductList(cell, at: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func configureProductList(_ cell: ProductsListTableViewCell, at indexPath: IndexPath) {
        
        let product = productsListViewModel.products.value[indexPath.row]
        cell.configureProductCell(imgUrl: product.imageURL, title: product.category.productType)
        
        let showLeftSide = indexPath.row % 2 == 0
        cell.leftStackView.isHidden = !showLeftSide
        cell.rightStackView.isHidden = showLeftSide
    }
    
    
}
