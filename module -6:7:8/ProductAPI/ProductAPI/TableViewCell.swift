//
//  TableViewCell.swift
//  ProductAPI
//
//  Created by MAC1 on 05/10/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_des: UILabel!
    @IBOutlet weak var lbl_price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
