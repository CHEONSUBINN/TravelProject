//
//  CityViewController.swift
//  TravelProject
//
//  Created by subin on 7/17/25.
//

import UIKit

class CityViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CityCollectionViewCell", for: indexPath)
        
        return cell
    }

}
