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
            return printAlert(alertMessege: "割られる数を入力して下さい")
        }
        guard let num2 = Double(textField2.text!) else {
            return printAlert(alertMessege: "割る数を入力して下さい")
        }
        guard num2 != 0 else {
            return printAlert(alertMessege: "割る数に0を入力しないで下さい")
        }
        resultLabel.text = String(num1/num2)
        
        //キーボード戻す
        view.endEditing(true)
    }
    
    func printAlert(alertMessege: String) {
        //アラートを作る
        let alert = UIAlertController(title: "課題5", message: alertMessege, preferredStyle: .alert)
        alert.addAction(
            UIAlertAction(title: "OK", style: .default)
        )
        //アラートを表示させる
        self.present(alert, animated: true, completion: nil)
    }
}

