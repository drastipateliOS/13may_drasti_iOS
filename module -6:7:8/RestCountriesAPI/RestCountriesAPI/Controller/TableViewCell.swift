//
//  TableViewCell.swift
//  RestCountriesAPI
//
//  Created by MAC1 on 07/10/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_capital: UILabel!
    @IBOutlet weak var lbl_region: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
