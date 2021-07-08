//
//  CategoriesListTableViewCell.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 17/04/2021.
//

import UIKit
import SDWebImage

class CategoriesListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var categoriesImage: UIImageView!
    @IBOutlet weak var centerStackView: UIStackView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var productsCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoriesImage.applyshadowWithCorner(containerView: shadowView, cornerRadious: 8)
    }
    
    func configureProductCell(title: String?) {
        
//        let url = URL(string: imgUrl ?? "")
//        let placeholderImg = UIImage(named: "test2")
//        
//        productImage.sd_setImage(with: url, placeholderImage: placeholderImg)
        categoryNameLabel.text = title
    }

}


extension UIView {
    func applyshadowWithCorner(containerView : UIView, cornerRadious : CGFloat){
        containerView.clipsToBounds = false
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 1
        containerView.layer.shadowOffset = CGSize(width: 0, height: 13)
        containerView.layer.shadowRadius = 10
        containerView.layer.cornerRadius = cornerRadious
        containerView.layer.shadowPath = UIBezierPath(roundedRect: containerView.bounds, cornerRadius: cornerRadious).cgPath
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadious
    }
}
