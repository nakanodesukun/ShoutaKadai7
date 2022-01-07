//
//  RedViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit

class RedViewController: UIViewController {
    private let calculator = Calculator()

    // 足し算クラス
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func additionButton(_ sender: Any) {
        let resultText: String?
        do {
            let result = try calculator.addCalculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
            resultText = String(result)
        } catch let error as CalculatorError {
            resultText = error.massage
        } catch {
            resultText = "予期せぬエラーが発生しました"
        }
        view.endEditing(true)
        resultLabel.text = resultText
    }
}
