//
//  SalesCardsCollectionViewCell.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 09/07/2021.
//

import UIKit

class SalesCardsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var saleImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addToWishListBtn: UIButton!
    
    
    func roundedCard() {
        saleImageView.makeCardWithRoundedCorner()
    }
    
    func configureCell(imageName: String, description: String, price: String) {
        saleImageView.image = UIImage(named: imageName)
        descriptionLabel.text = description
        priceLabel.text = price
    }
    
}

extension UIView {
    func makeCardWithRoundedCorner() {
         self.layer.borderWidth = 1
         self.layer.masksToBounds = false
         self.layer.borderColor = UIColor.lightGray.cgColor
         self.layer.cornerRadius = self.frame.height / 16
         self.clipsToBounds = true
     }
}
