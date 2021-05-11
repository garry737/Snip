//
//  ProficiencyViewController.swift
//  Snip
//
//  Created by Garry Fanata on 4/24/21.
//

import UIKit

class ProficiencyViewController: UIViewController {

    @IBOutlet weak var beginnerBtn: UIButton!
    @IBOutlet weak var intermediateBtn: UIButton!
    @IBOutlet weak var expertBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beginnerBtn.roundedButtons()
        intermediateBtn.roundedButtons()
        expertBtn.roundedButtons()
        // Do any additional setup after loading the view.
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
