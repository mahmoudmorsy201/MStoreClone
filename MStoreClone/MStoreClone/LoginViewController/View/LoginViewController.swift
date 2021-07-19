//
//  LoginViewController.swift
//  MStoreClone
//
//  Created by iambavly on 7/12/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var smsLoginButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.makeCardWithRoundedCorner()
        facebookButton.makeCardWithRoundedCorner()
        smsLoginButton.makeCardWithRoundedCorner()

    }
    



}
