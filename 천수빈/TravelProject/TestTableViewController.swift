//
//  TestTableViewController.swift
//  TravelProject
//
//  Created by subin on 7/16/25.
//

import UIKit
import Kingfisher

class TestTableViewController: UITableViewController {
    
    static let identifier = "TestTableViewCell"
    
    var setting = ["공지사항", "실험실", "버전정보"]
    var setting2 = ["개인/보안", "알림", "채팅", "멀티프로필"]
    var etc = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // 섹션의 갯수(옵션)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    // 섹션의 타이틀(옵션)
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "전체 설정"
        } else if section == 1 {
            return "개인설정"
        } else if section == 2 {
            return "기타"
        } else {
            return "섹션"
        }
    }
    
    // 셀의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return setting.count
        } else if section == 1 {
            return setting2.count
        } else if section == 2 {
            return etc.count
        } else {
            return 0
        }
        
    }
    
    // 디자인 및 데이터
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = setting[indexPath.row]
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        } else if indexPath.section == 1 {
            cell.textLabel?.text = setting2[indexPath.row]
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        } else if indexPath.section == 2 {
            cell.textLabel?.text = etc[indexPath.row]
            cell.textLabel?.font = .boldSystemFont(ofSize: 15)
        }
        
        return cell
    }
    
    // 셀의 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let viewController = storyboard.instantiateViewController(withIdentifier: "TestDetailViewController") as! TestDetailViewController
        viewController.modalPresentationStyle = .fullScreen
        
        present(viewController, animated: true, completion: nil)
    }
    
}
