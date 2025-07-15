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
    
    var contents: String = "빈 공간"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setBackgroundColor()
        
        print(contents)
        detailImage.backgroundColor = .black
        
        titleLabel.text = contents
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        
    }
    
    
}
