//
//  LogInViewController.swift
//  Snip
//
//  Created by Garry Fanata on 4/23/21.
//

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var fbBtn: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nextBtn: UIButton!
    
    let vm = LogInViewModel.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        fbBtn.roundedButtons()
        nextBtn.roundedButtons()
        nextBtn.layer.shadowRadius = 1.5
        nextBtn.layer.shadowOpacity = 0.6
        nextBtn.layer.shadowColor = UIColor.gray.cgColor
        nextBtn.layer.shadowOffset = CGSize(width: 0 , height:5)
        
        emailTextField.drawBottomLine()
        passwordTextField.drawBottomLine()
        // Do any additional setup after loading the view.
    }

    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func logInButtonOnPress(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "LoggedInTabViewController")
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
        vm.setLogInUserDefault()
    }
    
    
    
}
