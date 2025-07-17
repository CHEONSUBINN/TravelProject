//
//  TravelTableViewController.swift
//  TravelProject
//
//  Created by subin on 7/12/25.
//

import UIKit
import Kingfisher

class TravelTableViewController: UITableViewController {
    
    let list = MagazineList().list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let xib = UINib(nibName: TravelTableViewCell.identifier, bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: TravelTableViewCell.identifier)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function, indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TravelTableViewCell.identifier, for: indexPath) as! TravelTableViewCell
        
        let row = list[indexPath.row]
        
        let url = URL(string: "\(list[indexPath.row].photo_image)")
        
        
        cell.configureCell(row: row)
        cell.photoImage.kf.setImage(with: url)
        
        //        cell.configuretitleLabel(row: row)
        //        cell.configuresubtitleLabel(row: row)
        //        cell.configuredateLabel(row: row)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        viewController.contents = list[indexPath.row]
        navigationController?.pushViewController(viewController, animated: true)
    }
}
