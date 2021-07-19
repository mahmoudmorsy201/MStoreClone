//
//  CartViewController.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 16/04/2021.
//

import UIKit

class CartViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var nextStepButton: UIButton!
    @IBOutlet weak var pagesSegmantedController: UISegmentedControl!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var topTabBarStackView: UIStackView!
    
    private lazy var mainCartViewController: MainCartViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: String(describing: MainCartViewController.self)) as! MainCartViewController
        
        return viewController
    }()

    private lazy var formViewController: FormViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: String(describing: FormViewController.self)) as! FormViewController
        
        return viewController
    }()
        
    private lazy var paymentViewController: PaymentViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: String(describing: PaymentViewController.self)) as! PaymentViewController
        
        return viewController
    }()
    
    private lazy var ordersViewController: OrderViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: String(describing: OrderViewController.self)) as! OrderViewController
        
        return viewController
    }()
    
    lazy private var childViews = [mainCartViewController,formViewController,paymentViewController,ordersViewController]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setIntialView()
        pagesSegmantedController.isEnabled = false
        setupSegmentedView()
    }
    
    private func setupSegmentedView() {
        topTabBarStackView.makeRounded(borderColor: UIColor.link.cgColor, with: 2)
    }
    
    private func setChildViewController(subViewController: UIViewController) {
        self.addChild(subViewController)
        containerView.addSubview(subViewController.view)
        subViewController.view.frame = containerView.bounds
        subViewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        subViewController.didMove(toParent: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParent: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParent()
    }
    
    
    private func setIntialView() {
        setChildViewController(subViewController: mainCartViewController)
    }
    
    private func checkSegmantedIndex() {
//        print(pagesSegmantedController.selectedSegmentIndex)
//         else if pagesSegmantedController.selectedSegmentIndex > childViews.count {
//            pagesSegmantedController.selectedSegmentIndex = 0
//        }
       
    }
    
    
    @IBAction func segmantedControlTapped(_ sender: UISegmentedControl) {
        
    }
    
    @IBAction func nextStepTapped(_ sender: Any) {
        pagesSegmantedController.selectedSegmentIndex += 1
        let childView = self.childViews[pagesSegmantedController.selectedSegmentIndex]
        remove(asChildViewController: childView)
        setChildViewController(subViewController: childView)
    }
    
    @IBAction func backBtnTapped(_ sender: Any) {
        pagesSegmantedController.selectedSegmentIndex -= 1
        print(pagesSegmantedController.selectedSegmentIndex)
        if pagesSegmantedController.selectedSegmentIndex <= 0 {
            self.tabBarController?.selectedIndex = 0
            pagesSegmantedController.selectedSegmentIndex = 0
        } else {
            let childView = self.childViews[pagesSegmantedController.selectedSegmentIndex]
            setChildViewController(subViewController: childView)
        }
        
    }
    
    
}

