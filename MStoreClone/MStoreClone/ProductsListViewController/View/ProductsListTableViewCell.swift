//
//  ProductsListTableViewCell.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 17/04/2021.
//

import UIKit

class ProductsListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var rightStackView: UIStackView!
    @IBOutlet weak var leftStackView: UIStackView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productsCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        productImage.applyshadowWithCorner(containerView: shadowView, cornerRadious: 8)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


extension UIImageView {
    func applyshadowWithCorner(containerView : UIView, cornerRadious : CGFloat){
        containerView.clipsToBounds = false
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 1
//        containerView.layer.shadowOffset = CGSize.zero
        containerView.layer.shadowOffset = CGSize(width: 0, height: 13)
        containerView.layer.shadowRadius = 10
        containerView.layer.cornerRadius = cornerRadious
        containerView.layer.shadowPath = UIBezierPath(roundedRect: containerView.bounds, cornerRadius: cornerRadious).cgPath
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadious
    }
}
