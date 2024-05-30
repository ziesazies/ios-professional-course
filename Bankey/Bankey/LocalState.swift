//
//  LocalState.swift
//  Bankey
//
//  Created by Alief Ahmad Azies on 30/05/24.
//

import Foundation

public class LocalState {
    
    private enum Keys: String {
        case hasOnboard
    }
    
    public static var hasOnboarded: Bool {
        get {
            return UserDefaults.standard.bool(forKey: Keys.hasOnboard.rawValue)
        }
        set(newValue) {
            UserDefaults.standard.set(newValue, forKey: Keys.hasOnboard.rawValue)
        }
    }
}
