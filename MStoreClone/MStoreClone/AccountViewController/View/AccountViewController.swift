//
//  AccountViewController.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 16/04/2021.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var accountTableView: UITableView! {
        didSet {
            accountTableView.delegate = self
            accountTableView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension AccountViewController: UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: AccountFirstTableViewCell.self)) as? AccountFirstTableViewCell else {
                return UITableViewCell()
            }
            return cell
        case 1:
            switch indexPath.row {
            case 0,2,5...9:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: InfoAccountTableViewCell.self)) as? InfoAccountTableViewCell else {
                    return UITableViewCell()
                }
                return cell
            case 1:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CurrencyAccountTableViewCell.self)) as? CurrencyAccountTableViewCell else {
                    return UITableViewCell()
                }
                return cell
                
            case 3,4:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: IndicatorAccountTableViewCell.self)) as? IndicatorAccountTableViewCell else {
                    return UITableViewCell()
                }
                if indexPath.row == 4 {
                    cell.cellSwitch.isOn = false
                }
                return cell
                
            default:
                return UITableViewCell()
            }
        default:
            return UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 150
        case 1:
            return 60
        default:
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 10
        default:
            return 0
        }
    }

    
}
