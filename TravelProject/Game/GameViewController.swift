//
//  GameViewController.swift
//  TravelProject
//
//  Created by subin on 7/13/25.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var resultTextView: UITextView!
    @IBOutlet var resultLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        userTextField.placeholder = "최대 숫자를 입력해주세요"
        userTextField.layer.cornerRadius = 5
        userTextField.layer.borderWidth = 1
        userTextField.keyboardType = .default
        
        resultTextView.textContainer.maximumNumberOfLines = 10
        resultTextView.isEditable = false
        resultTextView.text = "3, 6, 9 게임 시작!"
    }
    
    
    @IBAction func userTextFieldDidEndOnExit(_ sender: UITextField) {
        guard let inpuTextView = userTextField.text, !inpuTextView.isEmpty else {
            resultTextView.text = "숫자를 입력해주세요"
            print(#function)

            return
        }
        guard let number = Int(inpuTextView), number > 0 else {
            resultTextView.text = "올바른 숫자를 입력해주세요"
            print(#function)

            return
        }
        
        if number > 1000 {
            resultTextView.text = "1000 이하의 숫자를 입력해주세요!"
            print(#function)

            return
        }
        playThreeSixNineGame(maxNumber: number)
    }
    
    func playThreeSixNineGame(maxNumber: Int) {
        var gameResult = ""
        print(#function)

        
        for i in 1...maxNumber {
            let countNumber = String(i)
            var clapCount = 0
            
            for num in countNumber {
                if num == "3" || num == "6" || num == "9" {
                    clapCount += 1
                }
            }
            if clapCount > 0 {
                let claps = String(repeating: "👏🏻", count: clapCount)
                gameResult += "\(claps), "
            } else {
                gameResult += "\(i),  "
            }
        }
        resultTextView.text = gameResult
    }
}


