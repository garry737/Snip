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
    
    var arrrName : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpBtn.roundedButtons()
        loginBtn.roundedButtons()
        loginBtn.layer.borderColor = CGColor(gray: 0.7, alpha: 1)
        // Do any additional setup after loading the view.
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
