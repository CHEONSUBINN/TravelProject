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
    
    // 상자 만드는거 까지 했는데
    // 상자에 원하는 물건을 담으려면
    // 어떻게 해야할까요..
    // 뿌엥 ㅜㅜㅜㅜㅜㅜㅜㅜㅜ
    var contents: String = "빈 공간"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(contents)
        detailImage.backgroundColor = .black
        
        titleLabel.text = contents
        titleLabel.textColor = .black
        titleLabel.numberOfLines = 0
        
    }
    
    
}
