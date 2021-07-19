//
//  CouponTableViewCell.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 15/07/2021.
//

import UIKit

class CouponTableViewCell: UITableViewCell {
    @IBOutlet weak var couponCodeTextField: UITextField!
    @IBOutlet weak var applyBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCouponTextField()
        configureApplyButton()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func configureCouponTextField() {
        couponCodeTextField.makeRounded(borderColor: UIColor.lightGray.cgColor, with: 2)
    }
    
    private func configureApplyButton() {
        applyBtn.makeRounded(borderColor: UIColor.white.cgColor, with: 2)
    }


}
