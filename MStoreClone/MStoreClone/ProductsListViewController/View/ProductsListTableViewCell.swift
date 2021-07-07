//
//  ProductsListTableViewCell.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 17/04/2021.
//

import UIKit
import SDWebImage

class ProductsListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var rightStackView: UIStackView!
    @IBOutlet weak var leftStackView: UIStackView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var rightProductLabel: UILabel!
    @IBOutlet weak var rightProductsCountLabel: UILabel!
    @IBOutlet weak var leftProductsCountLabel: UILabel!
    @IBOutlet weak var leftProdutLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        productImage.applyshadowWithCorner(containerView: shadowView, cornerRadious: 8)
    }
    
    func configureProductCell(imgUrl: String? , title: String?) {
        
        let url = URL(string: imgUrl ?? "")
        let placeholderImg = UIImage(named: "test2")
        
        productImage.sd_setImage(with: url, placeholderImage: placeholderImg)
        rightProductLabel.text = title
        leftProdutLabel.text = title
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
