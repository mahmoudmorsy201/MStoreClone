//
//  FormViewController.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 14/07/2021.
//

import UIKit

class FormViewController: UIViewController {
    @IBOutlet weak var freeShippingView: UIView!
    @IBOutlet weak var flatRateView: UIView!
    @IBOutlet weak var localPickupView: UIView!
    @IBOutlet weak var noteTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("Form View Controller Will Disappear")
    }
    
    private func setUpView() {
        freeShippingView.makeRounded(borderColor: UIColor.white.cgColor, with: 12)
        flatRateView.makeRounded(borderColor: UIColor.link.cgColor, with: 12)
        localPickupView.makeRounded(borderColor: UIColor.link.cgColor, with: 12)
        noteTextView.makeRounded(borderColor: UIColor.lightGray.cgColor, with: 12)
    }



}
