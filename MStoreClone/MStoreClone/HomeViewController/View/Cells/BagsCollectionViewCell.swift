//
//  BagsCollectionViewCell.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 10/07/2021.
//

import UIKit

class BagsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var bagImageView: UIImageView!
    @IBOutlet weak var bagDescriptionLabel: UILabel!
    @IBOutlet weak var bagPriceLabel: UILabel!
    
    func roundedCard() {
        bagImageView.makeRounded(borderColor:  UIColor.lightGray.cgColor, with: 16)
    }
    
}
