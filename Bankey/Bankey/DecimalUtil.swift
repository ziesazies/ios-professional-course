//
//  DecimalUtil.swift
//  Bankey
//
//  Created by Alief Ahmad Azies on 04/06/24.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
