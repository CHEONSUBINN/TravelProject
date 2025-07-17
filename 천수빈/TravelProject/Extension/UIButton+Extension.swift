//
//  UIButton+Extension.swift
//  TravelProject
//
//  Created by subin on 7/16/25.
//

import UIKit

extension UIButton {
    func configure(title: String) {
        self.setTitle(title, for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.backgroundColor = .systemBlue
        self.layer.cornerRadius = 20
        self.clipsToBounds = true
    }
}
