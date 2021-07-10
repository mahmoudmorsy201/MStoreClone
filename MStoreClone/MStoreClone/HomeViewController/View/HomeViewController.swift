//
//  HomeViewController.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 16/04/2021.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var featureProductsCollectionView: UICollectionView! {
        didSet {
            featureProductsCollectionView.dataSource = self
            featureProductsCollectionView.delegate = self
        }
    }
    @IBOutlet weak var bagsCollectionView: UICollectionView! {
        didSet {
            bagsCollectionView.dataSource = self
            bagsCollectionView.delegate = self
        }
    }
    
    @IBOutlet weak var categoriesCollectionView: UICollectionView! {
        didSet {
            categoriesCollectionView.dataSource = self
            categoriesCollectionView.delegate = self
        }
    }
    @IBOutlet weak var salesCardCollectionView: UICollectionView! {
        didSet {
            salesCardCollectionView.dataSource = self
            salesCardCollectionView.delegate = self
        }
    }
    @IBOutlet weak var categoryImage1: UIImageView!
    @IBOutlet weak var categoryImage2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCategoryImageView()
    }
    
    func configureCategoryImageView() {
        categoryImage1.makeCardWithRoundedCorner()
        categoryImage2.makeCardWithRoundedCorner()
    }
    

}

extension HomeViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.categoriesCollectionView {
            guard let catecoriesCell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CategoriesCollectionViewCell.self)  , for: indexPath) as? CategoriesCollectionViewCell else {
                return UICollectionViewCell()
            }
            catecoriesCell.circleAvatar()
            catecoriesCell.configureCell(imageName: "menSymbol", title: "Women", backgroundColor: .blue)
            return catecoriesCell
            
        } else if collectionView == self.salesCardCollectionView {
            
            guard let salesCardCell = salesCardCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: SalesCardsCollectionViewCell.self)  , for: indexPath) as? SalesCardsCollectionViewCell else {
                return UICollectionViewCell()
            }
            salesCardCell.roundedCard()
            return salesCardCell
        } else if collectionView == self.featureProductsCollectionView {
            
            guard let featureProductsCell = featureProductsCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeatureProductsCollectionViewCell.self)  , for: indexPath) as? FeatureProductsCollectionViewCell else {
                return UICollectionViewCell()
            }
            featureProductsCell.featureProductImage.makeCardWithRoundedCorner()
            return featureProductsCell
        } else if collectionView == self.bagsCollectionView {
            
            guard let bagsCell = bagsCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: BagsCollectionViewCell.self)  , for: indexPath) as? BagsCollectionViewCell else {
                return UICollectionViewCell()
            }
            bagsCell.bagImageView.makeCardWithRoundedCorner()
            return bagsCell
        }
        
        else {
            return UICollectionViewCell()
        }
    }
}

