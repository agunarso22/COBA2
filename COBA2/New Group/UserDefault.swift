//
//  UserDefault.swift
//  COBA2
//
//  Created by Amara Putri Gunarso on 27/04/22.
//

import Foundation

extension UserDefaults {
    
    enum Key: String {
        case userGoal // timer
        case task
        case description
        case latestPage
        case userStreak
    }
    
    var latestPage: Float? {
        get {
            float(forKey: Key.latestPage.rawValue)
        }
        set {
            setValue(newValue, forKey: Key.latestPage.rawValue)
        }
    }
}
