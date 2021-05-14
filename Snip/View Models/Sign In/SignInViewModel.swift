//
//  SignInViewModel.swift
//  Snip
//
//  Created by Garry Fanata on 5/11/21.
//

import Foundation

protocol SignInViewModelProtocol {
    func moveToHomeView()
}

class SignInViewModel {
    var delegate: SignInViewModelProtocol?
    
    func checkIfLoggedIn() {
        if LogInHelper.shared.checkLoggedIn() {
            delegate?.moveToHomeView()
        }
    }
    
    
}
