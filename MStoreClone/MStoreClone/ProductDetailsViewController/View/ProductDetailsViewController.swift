//
//  ProductDetailsViewController.swift
//  MStoreClone
//
//  Created by iambavly on 7/14/21.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    
    var desc = ["akd.asmd.ad" , "dm.,dms.ad" , "a/ldsmadsasd"]
    
    var features = ["play" , "eat" , "drink"]
    var reviews = ["play" , "eat" , "mdamdam"]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    lazy var selectedRow = desc
    @IBOutlet weak var sizesSelector: UIView!
    

    let gesture = UITapGestureRecognizer(target: self, action:  #selector(checkAction))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(checkAction))
        self.sizesSelector.addGestureRecognizer(gesture)
    
    }
    @IBAction func valueChanged(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            selectedRow = desc
        case 1:
            selectedRow = features
        case 2:
            selectedRow = reviews
        default:
            selectedRow = desc
        }
        tableView.reloadData()
    }
    @objc func checkAction(){
        print("selected")
        let VC1 = self.storyboard!.instantiateViewController(withIdentifier: "DataPickerViewController") as! DataPickerViewController


        self.present(VC1, animated: true, completion: nil)
    }
    

}

extension ProductDetailsViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedRow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "detailsCell") else {
            return UITableViewCell()
        }
        
        cell.textLabel?.text = selectedRow[indexPath.row]
        
        return cell
    }
    
    
    
}
