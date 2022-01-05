//
//  GreenViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit

class GreenViewController: UIViewController {
    private let modal = Modal()
    // プロパティに値を保持
private var corectAnswer: String?
    // 引き算
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func subtractionButton(_ sender: Any) {
        do {
        let result = try modal.subtactionCalculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
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
