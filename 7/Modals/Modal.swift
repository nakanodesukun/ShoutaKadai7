//
//  Modal.swift
//  7
//
//  Created by 中野翔太 on 2021/12/31.
//

import Foundation

enum CaluculateError: Error {
    case nonAdded // たされる数に数値を入力してください
    case nonAdd // たす数に数値を入力して下さい
    case minuend // 引かれる数
    case subtract // 引く数
    // コンピューテッドプロパティ
    var massage: String {
        switch self {
        case .nonAdded: return "たされる数を入力して下さい"
        case .nonAdd:   return   "たす数を入力して下さい"
        case .minuend:  return  "引かれる数を入力して下さい"
        case .subtract: return "引く数を入力して下さい"
        }
    }

}
final class Modal {
    func addCalculate(text1: String, text2: String) throws -> Int {
        guard let value1 = Int(text1) else {
            throw CaluculateError.nonAdded
        }
        guard let value2 = Int(text2) else {
            throw CaluculateError.nonAdd
        }
        return value1 + value2
    }
    func subtactionCalculate(text1: String, text2: String)throws -> Int {
        guard let value1 = Int(text1) else {
            throw CaluculateError.minuend
        }
        guard let value2 = Int(text2) else {
            throw CaluculateError.subtract
        }
        return value1 - value2
    }

}
