//
//  RegisterViewController.swift
//  Snip
//
//  Created by Garry Fanata on 4/23/21.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var fbBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fbBtn.roundedButtons()
        nextBtn.roundedButtons()
        
        nextBtn.layer.shadowRadius = 1.5
        nextBtn.layer.shadowOpacity = 0.6
        nextBtn.layer.shadowColor = UIColor.gray.cgColor
        nextBtn.layer.shadowOffset = CGSize(width: 0 , height:5)
        
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        firstNameTextField.drawBottomLine()
        lastNameTextField.drawBottomLine()
        emailTextField.drawBottomLine()
        passwordTextField.drawBottomLine()
        
    }
    
    @IBAction func hideKeyboard(_ sender: Any) {
        firstNameTextField.resignFirstResponder()
        lastNameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        switch textField {
            case firstNameTextField:
                self.lastNameTextField.becomeFirstResponder()
            case self.lastNameTextField:
                self.emailTextField.becomeFirstResponder()
            case self.emailTextField:
                self.passwordTextField.becomeFirstResponder()
            case self.passwordTextField:
                textField.resignFirstResponder()
            default:
                return true
        }
        return true
    }
    
}

