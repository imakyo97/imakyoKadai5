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
        
        //アラートを作る
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        alert.title = "課題5"
        alert.addAction(
            UIAlertAction(title: "OK", style: .default)
        )
        
        //アラートメッセージを条件分岐させる
        if textField1.text! == ""{
            alert.message = "割られる数を入力して下さい"
            self.present(alert, animated: true)
            return
        } else if textField2.text! == ""{
            alert.message = "割る数を入力して下さい"
            self.present(alert, animated: true)
            return
        } else if textField2.text == "0"{
            alert.message = "割る数に0を入力しないで下さい"
            self.present(alert, animated: true)
            return
        }
        
        //割り算する
        let num1 = Double(textField1.text!) ?? 0
        let num2 = Double(textField2.text!) ?? 0
        resultLabel.text = String(num1/num2)
        
        //キーボード戻す
        view.endEditing(true)
    }
}

