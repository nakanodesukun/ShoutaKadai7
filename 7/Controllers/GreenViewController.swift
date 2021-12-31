//
//  GreenViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit

class GreenViewController: UIViewController {
 let subtraction = Modal()
 //引き算
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func subtractionButton(_ sender: Any) {
        let value = subtraction.subtrctionCalculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
        resultLabel.text = String(value)
    }
    
    
}
