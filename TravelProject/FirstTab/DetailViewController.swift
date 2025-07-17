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
    
    var contents: Magazine = Magazine(title: "", subtitle: "", photo_image: "", date: "", link: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        otherButton.configure(title: "다른 관광지 보러가기")
        
        let url = URL(string: contents.photo_image)
        detailImage.kf.setImage(with: url)
        
        titleLabel.text = "\(contents.title)"
        subtitleLabel.text = "\(contents.subtitle)"
    }
    
    
}
