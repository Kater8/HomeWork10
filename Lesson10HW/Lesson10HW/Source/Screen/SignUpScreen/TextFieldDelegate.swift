//
//  TextFieldDelegate.swift
//  Lesson10HW
//
//  Created by K on 01.04.2024.
//

import Foundation
import UIKit

class TextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let characterLimit: Int
    
    init(characterLimit: Int) {
        self.characterLimit = characterLimit
        super.init()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentCharacterCount = textField.text?.count ?? 0
        if range.length + range.location > currentCharacterCount {
            return false
        }
        let newLength = currentCharacterCount + string.count - range.length
        return newLength <= characterLimit
    }
}
