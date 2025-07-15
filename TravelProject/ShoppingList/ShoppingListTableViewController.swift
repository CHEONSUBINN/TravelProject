//
//  ShoppingListTableViewController.swift
//  TravelProject
//
//  Created by subin on 7/12/25.
//

import UIKit

class ShoppingListTableViewController: UITableViewController {
    
    @IBOutlet var addTextField: UITextField!
    
    var shoppingList = ["여름 옷 사기", "사이다", "간식 사기", "빵 사기", "에어팟 맥스 최저가 구매"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if addTextField.text != nil {
            print("값이 나옴")
        } else {
            print("안나옴")
        }
            tableView.reloadData()
            
            print(#function)
    }
    
    // 버튼
    @IBAction func addButtonClicked(_ sender: UIButton) {
        if addTextField.text?.isEmpty ?? false {
        }
        shoppingList.append(addTextField.text!)
        
        tableView.reloadData()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        
        return shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function, indexPath)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! ShoppingListTableViewCell
        
        
        cell.textLabel?.text = shoppingList[indexPath.row]
        
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function, indexPath, shoppingList)
        
        shoppingList.remove(at: indexPath.row)
        tableView.reloadData()
        
        
        return 50
    }
}
