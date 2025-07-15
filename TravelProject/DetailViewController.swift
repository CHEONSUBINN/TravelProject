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
        
//        setBackgroundColor()
        
        detailImage.backgroundColor = .black
        
        titleLabel.text = "여행에 가고 싶으신가요?"
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        
    }
    
    
}
