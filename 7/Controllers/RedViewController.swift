//
//  RedViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit
 private enum caluculateError : Error {
case nonAdded //"たされる数に数値を入力してください"
case nonAdd //たす数に数値を入力して下さい
    var massage : String{
        switch self {
        case .nonAdded: return "たされる数に数値を入力して下さい"
        case .nonAdd: return "たす数に数値を入力して下さい"
        }
    }
   
}

private func addCalculate(text1: String, text2: String) throws -> Int {
    guard let value1 = Int(text1) else {
        throw caluculateError.nonAdded
    }
    guard let value2 = Int(text2) else {
        throw caluculateError.nonAdd
    }
    return value1 + value2
}

class RedViewController: UIViewController {

//足し算クラス
    @IBOutlet private  weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    
  
    @IBAction private func additionButton(_ sender: Any) {
        do {
            let result = try addCalculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
            resultLabel.text = String(result)
        } catch let error as caluculateError {
            resultLabel.text = error.massage
        } catch {
            print("予期せぬエラーが起きました")
        }
    }
    
}
