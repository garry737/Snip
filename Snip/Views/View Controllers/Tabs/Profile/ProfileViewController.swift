//
//  ProfileViewController.swift
//  Snip
//
//  Created by Garry Fanata on 4/23/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let vm = ProfileViewModel.init()

    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var activityRadioButton: RadioButton!
    @IBOutlet weak var favoriteRadioButton: RadioButton!
    @IBOutlet weak var profileSubView: UIView!
    @IBOutlet weak var profileAlternateSubView: ProfileFavoritesView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profilePictureImageView.makeImageCircle(rad: 2)
        activityRadioButton.isSelected = true
        favoriteRadioButton.isSelected = false
        
        profileSubView.isHidden = false
        profileAlternateSubView.isHidden = true
        
        activityRadioButton?.alternateButtons = [favoriteRadioButton!]
        favoriteRadioButton?.alternateButtons = [activityRadioButton!]
        
    }
    
    @IBAction func logOutButtonOnPress(_ sender: Any) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "SignInViewController")
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)

        vm.setLogOutUserDefault()
    }
    
    @IBAction func activityRadioButtonOnPress(_ sender: RadioButton) {
        profileSubView.isHidden = false
        profileAlternateSubView.isHidden = true
    }
    
    @IBAction func favoriteRadioButtonOnPress(_ sender: RadioButton) {
        profileSubView.isHidden = true
        profileAlternateSubView.isHidden = false
    }
    

}
