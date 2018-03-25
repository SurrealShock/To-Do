//
//  UserData.swift
//  To-Do
//
//  Created by Adrian Avram on 3/24/18.
//  Copyright © 2018 OverLakeside. All rights reserved.
//

import Foundation

let preferences = UserDefaults.standard
let emptyArray = [String]()

class UserData {
    
    func saveUserData(key: String, value: Array<Any> ){
        preferences.set(value, forKey: key)
    }
    
    func getUserData(key: String) -> Array<Any> {
        if (key == "goalTitle") {
            if preferences.object(forKey: key) == nil {
                preferences.set(emptyArray, forKey: key)
            }
        }
        
        if (key == "goalDescription") {
            if preferences.object(forKey: key) == nil {
                preferences.set(emptyArray, forKey: key)
            }
        }
        return preferences.array(forKey: key)!
    }
}
