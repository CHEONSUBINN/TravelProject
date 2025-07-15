//
//  DetailViewController.swift
//  TravelProject
//
//  Created by subin on 7/15/25.
//

import UIKit
import Kingfisher

class DetailViewController: UIViewController {

    @IBOutlet var detailImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var otherButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func configureCell(row: Magazine) {
        titleLabel.text = row.title
        titleLabel.font = .boldSystemFont(ofSize: 20)
    }
    
}
