//
//  MainCartViewController.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 14/07/2021.
//

import UIKit

class MainCartViewController: UIViewController {

    @IBOutlet weak var cartTableView: UITableView! {
        didSet {
            cartTableView.dataSource = self
            cartTableView.delegate = self
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("MainCart View Controller Will Disappear")
    }
    
    private func setupViewForEmptyCart() {
        
    }
    
}

extension MainCartViewController: UITableViewDataSource,UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 10
        case 2:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            guard let totalPriceCell = tableView.dequeueReusableCell(withIdentifier: String(describing: TotalPriceTableViewCell.self)) as? TotalPriceTableViewCell else {
                return UITableViewCell()
            }
            
            return totalPriceCell
        case 1:
            guard let cartCell = tableView.dequeueReusableCell(withIdentifier: String(describing: CartTableViewCell.self)) as? CartTableViewCell else {
                return UITableViewCell()
            }
            
            return cartCell
        case 2:
            guard let couponCell = tableView.dequeueReusableCell(withIdentifier: String(describing: CouponTableViewCell.self)) as? CouponTableViewCell else {
                return UITableViewCell()
            }
            couponCell.separatorInset = UIEdgeInsets(top: 0, left: couponCell.bounds.size.width, bottom: 0, right: 0)
            
            return couponCell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 0
        case 1:
            return 20
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
        switch indexPath.section {
        case 0:
            return 50
        case 1:
            return 200
        case 2:
            return 200
        default:
            return 0
        }
    }
    
    
    
}

