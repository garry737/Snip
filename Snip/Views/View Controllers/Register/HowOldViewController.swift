//
//  HowOldViewController.swift
//  Snip
//
//  Created by Garry Fanata on 4/24/21.
//

import UIKit


class HowOldViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputAgeTextField: UITextField!
    @IBOutlet weak var inputGenderTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        inputAgeTextField.backgroundColor = UIColor.blue
        inputGenderTextField.backgroundColor = UIColor.blue
        inputAgeTextField.attributedPlaceholder = NSAttributedString(string: "INPUT AGE", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        inputGenderTextField.attributedPlaceholder = NSAttributedString(string: "INPUT GENDER", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField{
            case inputAgeTextField:
                inputGenderTextField.becomeFirstResponder()
            default:
                inputGenderTextField.resignFirstResponder()
        }
            return true
    }
    
    @IBAction func backBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
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
