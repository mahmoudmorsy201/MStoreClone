//
//  IndicatorAccountTableViewCell.swift
//  MStoreClone
//
//  Created by Mahmoud Morsy on 19/04/2021.
//

import UIKit

class IndicatorAccountTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cellSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
