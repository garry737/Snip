//
//  SignInViewController.swift
//  Snip
//
//  Created by Garry Fanata on 4/23/21.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    
    let vm = SignInViewModel.init()
    
    var arrrName : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vm.delegate = self
        
        signUpBtn.roundedButtons()
        loginBtn.roundedButtons()
        loginBtn.layer.borderColor = CGColor(gray: 0.7, alpha: 1)
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        vm.checkIfLoggedIn()
    }

}

extension SignInViewController: SignInViewModelProtocol {
    func moveToHomeView() {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "LoggedInTabViewController")
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}
