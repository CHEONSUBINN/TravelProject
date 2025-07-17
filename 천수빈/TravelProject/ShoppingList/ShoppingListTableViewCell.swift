//
//  ShoppingListTableViewCell.swift
//  TravelProject
//
//  Created by subin on 7/12/25.
//

import UIKit

class ShoppingListTableViewCell: UITableViewCell {
    
    @IBOutlet var listLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        listLabel.layer.backgroundColor = UIColor.systemGray6.cgColor
        
    }

}
