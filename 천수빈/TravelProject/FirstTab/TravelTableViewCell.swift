//
//  TravelTableViewCell.swift
//  TravelProject
//
//  Created by subin on 7/15/25.
//

import UIKit
import Kingfisher

class TravelTableViewCell: UITableViewCell {
    
    static let identifier = "TravelTableViewCell"
    
    @IBOutlet var photoImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    
    }
    
    func configureCell(row: Magazine) {
        titleLabel.text = row.title
        titleLabel.font = .boldSystemFont(ofSize: 17)
        titleLabel.numberOfLines = 0
        
        subTitleLabel.text = row.subtitle
        subTitleLabel.tintColor = .lightGray
        subTitleLabel.numberOfLines = 0
        
        dateLabel.text = "\(row.date)"
        dateLabel.tintColor = .lightGray
    }
    
//    func configuretitleLabel(row: Magazine) {
//        titleLabel.text = row.title
//        titleLabel.font = .boldSystemFont(ofSize: 17)
//    }
//    
//    func configuresubtitleLabel(row: Magazine) {
//        subTitleLabel.text = row.subtitle
//        subTitleLabel.tintColor = .lightGray
//    }
//    
//    func configuredateLabel(row: Magazine) {
//        dateLabel.text = row.date
//        dateLabel.tintColor = .lightGray
//    }
    
}
