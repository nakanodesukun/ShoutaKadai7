//
//  GreenViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit

class GreenViewController: UIViewController {
let modal = Modal()
 //引き算
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
   
    @IBAction func subtractionButton(_ sender: Any) {
        do {
            let result = try modal.calculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
            print(result)
        } catch let error as caluculateError {
            resultLabel.text = error.massage
        } catch {
            resultLabel.text = "予期せぬエラーが起きました"
        }
    }
    
    
}
