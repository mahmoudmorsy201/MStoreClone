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
        saleImageView.makeRounded(borderColor:  UIColor.lightGray.cgColor, with: 16)
    }
    
    func configureCell(imageName: String, description: String, price: String) {
        saleImageView.image = UIImage(named: imageName)
        descriptionLabel.text = description
        priceLabel.text = price
    }
    
}
