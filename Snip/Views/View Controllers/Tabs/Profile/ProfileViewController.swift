//
//  ProfileViewController.swift
//  Snip
//
//  Created by Garry Fanata on 4/23/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let vm = ProfileViewModel.init()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutButtonOnPress(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "SignInViewController")
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)

        vm.setLogOutUserDefault()
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
