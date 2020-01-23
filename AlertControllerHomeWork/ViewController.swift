//
//  ViewController.swift
//  AlertControllerHomeWork
//
//  Created by Nikita Moskalenko on 1/21/20.
//  Copyright © 2020 Nikita Moskalenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//      MARK: - Public methods

    func alert(title: String, message: String, style: UIAlertController.Style, text: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let action = UIAlertAction.init(title: "OK", style: .cancel) { (action) in
            if let alertControlletText = alertController.textFields?.first?.text{
                if alertControlletText == text {
                    let answerAlertController = UIAlertController(title: "Congratulation!", message: "You are right!", preferredStyle: .actionSheet)
                    answerAlertController.addAction(action)
                    self.present(answerAlertController, animated: true, completion: nil)
                } else {
                    let loseAnswer = UIAlertController(title: "False!", message: "You are wrong!", preferredStyle: .actionSheet)
                    loseAnswer.addAction(action)
                    self.present(loseAnswer, animated: true, completion: nil)
                }
            }
        }
        
        alertController.addTextField(configurationHandler: nil)
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
//    MARK: - Actions

      @IBAction func firstButton(_ sender: Any) {
        self.alert(title: "2 + 2", message: "= ?", style: .alert, text: "4")
      }
      
      @IBAction func SecondButton(_ sender: Any) {
        self.alert(title: "2 + 2 * 2", message: "= ?", style: .alert, text: "6")
      }
}

