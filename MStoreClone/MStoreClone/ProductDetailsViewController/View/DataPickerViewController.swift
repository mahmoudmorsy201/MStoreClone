//
//  DataPickerViewController.swift
//  MStoreClone
//
//  Created by iambavly on 7/15/21.
//

import UIKit

class DataPickerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    



}

extension DataPickerViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell  = tableView.dequeueReusableCell(withIdentifier: "DataPickerCell") else{
            return UITableViewCell()
        }
        return cell
    }
    
    
    
}
