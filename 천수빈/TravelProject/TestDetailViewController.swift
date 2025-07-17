//
//  TestDetailViewController.swift
//  TravelProject
//
//  Created by subin on 7/16/25.
//

import UIKit

class TestDetailViewController: UIViewController {

    @IBOutlet var backButton: UIButton!
    @IBOutlet var adLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adLabel.text = "도쿄 여행 예약은?  가고싶네요🫠 .....허허허허허허허헣"
        adLabel.font = .boldSystemFont(ofSize: 20)
        adLabel.numberOfLines = 0
        
        backButton.tintColor = .black

    }
    @IBAction func backButtonClicked(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
