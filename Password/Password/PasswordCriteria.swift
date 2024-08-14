//
//  PasswordCriteria.swift
//  Password
//
//  Created by Alief Ahmad Azies on 14/08/24.
//

import Foundation

struct PasswordCriteria {
    static func lengthCriteriaMet(_ text: String) -> Bool {
        return text.count >= 8 && text.count <= 32
    }
    
    static func noSpaceCriteriaMet(_ text: String) -> Bool {
        return text.rangeOfCharacter(from: NSCharacterSet.whitespaces) == nil
    }
    
    static func lengthAndNoSpaceMet(_ text: String) -> Bool {
        return lengthCriteriaMet(text) && noSpaceCriteriaMet(text)
    }
    
    static func uppercaseMet(_ text: String) -> Bool {
        return text.range(of: "[A-Z]+", options: .regularExpression) != nil
    }
    
    static func lowercaseMet(_ text: String) -> Bool {
        return text.range(of: "[a-z]+", options: .regularExpression) != nil
    }
    
    static func numbercaseMet(_ text: String) -> Bool {
        return text.range(of: "[0-9]+", options: .regularExpression) != nil
    }
    
    static func specialCharMet(_ text: String) -> Bool {
        return text.range(of: "[$&+,:;=?@#|'<>.^*()%!-/\\\\]", options: .regularExpression) != nil
    }
    
}
