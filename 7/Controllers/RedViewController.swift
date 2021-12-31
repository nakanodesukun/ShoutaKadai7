//
//  RedViewController.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import UIKit

class RedViewController: UIViewController {
    private let addtion = Modal()
//足し算クラス
    @IBOutlet private  weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func additionButton(_ sender: Any) {
        let result =  addtion.addCalculate(text1: firstTextField.text ?? "", text2: secondTextField.text ?? "")
        resultLabel.text = String(result)
    }
    
}
