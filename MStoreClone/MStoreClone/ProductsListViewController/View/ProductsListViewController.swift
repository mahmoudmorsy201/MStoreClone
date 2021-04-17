//
//  ProductsListViewController.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 16/04/2021.
//

import UIKit

class ProductsListViewController: UIViewController {
    @IBOutlet weak var productsListTableView: UITableView! {
        didSet {
            productsListTableView.delegate = self
            productsListTableView.dataSource = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

extension ProductsListViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ProductsListTableViewCell.self)) as? ProductsListTableViewCell else {
            return UITableViewCell()
        }
        
        if indexPath.row % 2 == 0 {
            cell.leftStackView.isHidden = true
        } else {
            cell.rightStackView.isHidden = true
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
}
