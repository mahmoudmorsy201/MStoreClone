//
//  PCategoriesListViewController.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 16/04/2021.
//

import UIKit
import Combine
import JGProgressHUD

class CategoriesListViewController: UIViewController {
    @IBOutlet weak var categoriesListTableView: UITableView! {
        didSet {
            categoriesListTableView.delegate = self
            categoriesListTableView.dataSource = self
        }
    }
    
    let hud = JGProgressHUD()
    let categoriesListViewModel = CategoriesListViewModel()
    var bag = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoriesListViewModel.loadCategories()
        categoriesListViewModel.loadAllProducts()
        observeCategoriesViewModel()
    }
    
    private func observeCategoriesViewModel() {
        hud.textLabel.text = "Loading"
        hud.show(in: self.view)
        categoriesListViewModel.categories
            .sink(receiveCompletion: { _ in },
                  receiveValue: {[weak self] (categories) in
                    DispatchQueue.main.async {
                        self?.hud.dismiss()
                        self?.categoriesListTableView.reloadData()
                    }
                  }).store(in: &bag)
    }
    
}

extension CategoriesListViewController: UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoriesListViewModel.categories.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CategoriesListTableViewCell.self)) as? CategoriesListTableViewCell else {
            return UITableViewCell()
        }
        
        configureProductList(cell, at: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    func configureProductList(_ cell: CategoriesListTableViewCell, at indexPath: IndexPath) {
        
        let category = categoriesListViewModel.categories.value[indexPath.row]
        cell.configureProductCell(title: category.productType)
        stackViewCondition(cell, at: indexPath)
    }
    
    func stackViewCondition(_ cell: CategoriesListTableViewCell, at indexPath: IndexPath) {
        
        let stackViewCondition = indexPath.row % 2 == 0
        if stackViewCondition {
            cell.centerStackView.alignment = .leading
        }else {
            cell.centerStackView.alignment = .trailing
        }
    }
    
    
}
