//
//  CityViewController.swift
//  TravelProject
//
//  Created by subin on 7/17/25.
//

import UIKit

class CityViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var myCollectionView: UICollectionView!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    var list = CityInfoList().list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
        let xib = UINib(nibName: "CityCollectionViewCell", bundle: nil)
        myCollectionView.register(xib, forCellWithReuseIdentifier: "CityCollectionViewCell")
        
        let layout = UICollectionViewFlowLayout()
        let deviceWidth = UIScreen.main.bounds.width
        let cellwidth = deviceWidth - (10 * 2) - (10 * 2)
        
        layout.itemSize = CGSize(width: cellwidth/3, height: cellwidth/3)
        layout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        
        layout.minimumInteritemSpacing = 16
        layout.minimumLineSpacing = 16
        layout.scrollDirection = .vertical
        
        myCollectionView.collectionViewLayout = layout
    }
    @IBAction func allButtonClicked(_ sender: UIButton) {
        print(#function)
        list = CityInfoList().list
        myCollectionView.reloadData()
    }
    @IBAction func domesticButtonClicked(_ sender: UIButton) {
        print(#function)
        
        let all = CityInfoList().list
        var filter: [City] = []
        
        for item in all {
            if item.domestic_travel {
                filter.append(item)
                print(#function, item)
                }
            }
        dump(filter)
        list = filter
        myCollectionView.reloadData()
        }
    
    @IBAction func foreignButtonClicked(_ sender: UIButton) {
        print(#function)
        
        let all = CityInfoList().list
        var filter: [City] = []
        
        for item in all {
            if !item.domestic_travel {
                filter.append(item)
                print(#function, item)
                }
            }
            dump(filter)
            list = filter
            myCollectionView.reloadData()
        }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print(#function, indexPath.item)
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CityCollectionViewCell", for: indexPath) as! CityCollectionViewCell
        
        let item = list[indexPath.item]
        
        let url = URL(string: "\(list[indexPath.row].city_image)")
        
        cell.configureCell(row: item)
        cell.cityImage.kf.setImage(with: url)
        
        return cell
    }
}
