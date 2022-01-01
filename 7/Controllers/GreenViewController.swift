//
//  GreenViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit

class GreenViewController: UIViewController {
enum calculateError : Error {
    case minuend //引かれる数
    case subtract //引くかず
    var message: String {
        switch self {
        case .minuend: return "引かれる数を入力して下さい"
        case .subtract: return "引く数を入力して下さい"
        }
    }
}
    func calculate(text1: String, text2: String)throws -> Int {
        guard let value1 = Int(text1) else {
            throw calculateError.minuend
        }
        guard let value2 = Int(text2) else {
            throw calculateError.subtract
        }
        return value1 - value2
    }
 //引き算
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
   
    @IBAction func subtractionButton(_ sender: Any) {
        do {
       let result = try calculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
            print(result)
        } catch let error as calculateError {
            resultLabel.text = error.message
        } catch {
            resultLabel.text = "予期せぬエラーが起きました"
        }
    }
    
    
}
