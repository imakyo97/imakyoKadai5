//
//  ViewController.swift
//  Kadai5
//
//  Created by 今村京平 on 2021/05/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    @IBAction private func resultBtn(_ sender: Any) {
        guard let num1 = Double(textField1.text!) else {
            presentAlert(message: "割られる数を入力して下さい")
            return
        }

        guard let num2 = Double(textField2.text!) else {
            presentAlert(message: "割る数を入力して下さい")
            return
        }

        guard num2 != 0 else {
            presentAlert(message: "割る数に0を入力しないで下さい")
            return
        }
        
        //割り算する
        resultLabel.text = String(num1 / num2)
        
        //キーボード戻す
        view.endEditing(true)
    }

    private func presentAlert(message: String) {
        //アラートを作る
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.title = "課題5"
        alert.addAction(
            UIAlertAction(title: "OK", style: .default)
        )
        present(alert, animated: true)
    }
}
