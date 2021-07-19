//
//  PlaceholderViewController.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 14/07/2021.
//

import UIKit

class PlaceholderViewController: UIViewController {

    @IBOutlet weak var shopNowBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupShopNowBtn()
    }
    
    private func setupShopNowBtn() {
        shopNowBtn.makeRounded(borderColor: UIColor.white.cgColor, with: 2)
        
    }
    
    @IBAction func shopNowBtnTapped(_ sender: Any) {
        
    }
    
}
