//
//  CityCollectionViewCell.swift
//  TravelProject
//
//  Created by subin on 7/17/25.
//

import UIKit

class CityCollectionViewCell: UICollectionViewCell {

    @IBOutlet var cityImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func configureCell(row: City) {
        cityImage.contentMode = .scaleAspectFill
        cityImage.layer.cornerRadius = 50
        cityImage.layer.masksToBounds = true
        
        
        // 이게 뭘까낭?~
        titleLabel.numberOfLines = 0
        titleLabel.text = [row.city_name, row.city_english_name].joined(separator: "\n")
        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        
        subTitleLabel.numberOfLines = 0
        subTitleLabel.text = row.city_explain
        subTitleLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        subTitleLabel.textColor = .lightGray
        
        
    }
}
