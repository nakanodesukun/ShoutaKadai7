//
//  RedViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit


class RedViewController: UIViewController {
let modal = Modal()
//足し算クラス
    @IBOutlet private  weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    
  
    @IBAction private func additionButton(_ sender: Any) {
        do {
        
            let result = try modal.addCalculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
            resultLabel.text = String(result)
        } catch let error as caluculateError {
            resultLabel.text = error.massage
        } catch {
            resultLabel.text = "予期せぬエラーが起きました"
        }
    }
    
}
