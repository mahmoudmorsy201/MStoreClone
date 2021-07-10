//
//  CategoriesCollectionViewCell.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 09/07/2021.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var circleView: UIView!

    func circleAvatar() {
        categoryImage.makeRounded()
    }
    
    func configureCell(imageName: String, title: String, backgroundColor: UIColor) {
        categoryImage.image = UIImage(named: imageName)
        categoryNameLabel.text = title
        categoryImage.backgroundColor = backgroundColor
    }
}

extension UIView {
    func makeRounded() {
         self.layer.borderWidth = 1
         self.layer.masksToBounds = false
         self.layer.borderColor = UIColor.black.cgColor
         self.layer.cornerRadius = self.frame.height / 2
         self.clipsToBounds = true
     }
}
