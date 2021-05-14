//
//  LogInHelper.swift
//  Snip
//
//  Created by Garry Fanata on 5/13/21.
//

import Foundation

class LogInHelper {
    
    static let shared = LogInHelper.init()
    let defaults = UserDefaults.standard
    
    private init() { }
    
    func setLogInUserDefault() {
        defaults.set(true, forKey: "LoggedIn")
    }
    
    func setLogOutUserDefault() {
        defaults.set(false, forKey: "LoggedIn")
    }
    
    func checkLoggedIn() -> Bool {
        return defaults.bool(forKey: "LoggedIn")
    }
    
}
