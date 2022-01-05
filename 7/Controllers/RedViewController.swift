//
//  RedViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit

class RedViewController: UIViewController {
    private let modal = Modal()
    private var corectAnswer: String?
    // 足し算クラス
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func additionButton(_ sender: Any) {
        do {
            let result = try modal.addCalculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
            corectAnswer = String(result)
        } catch let error as CaluculateError {
            corectAnswer = error.massage
        } catch {
            corectAnswer = "予期せぬエラーが発生しました"
        }
        view.endEditing(true)
        resultLabel.text = corectAnswer
    }
}
