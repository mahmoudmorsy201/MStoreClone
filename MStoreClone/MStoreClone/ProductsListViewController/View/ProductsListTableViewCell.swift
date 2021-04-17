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
        
        shadowView.layer.cornerRadius = 8
        productImage.layer.borderWidth = 1.0
        productImage.layer.cornerRadius = 8
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
