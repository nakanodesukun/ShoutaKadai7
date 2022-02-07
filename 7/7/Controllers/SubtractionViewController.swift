//
//  GreenViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit

class GreenViewController: UIViewController {
    private let calculator = Calculator()
  
    // 引き算
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func subtractionButton(_ sender: Any) {
        //　ローカル定数と呼ぶ？それともメソッド内の定数と呼ぶ？
        let resulutText: String?
        do {
            let result = try calculator.subtactionCalculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
            resulutText = String(result)
        } catch let error as CalculateError {
            resulutText = error.massage
        } catch {
            resulutText = "予期せぬエラーが発生しました"
        }
        view.endEditing(true)
        resultLabel.text = resulutText
    }

}
