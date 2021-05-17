//
//  ProfileActivityView.swift
//  Snip
//
//  Created by Garry Fanata on 5/14/21.
//

import UIKit

class ProfileActivityView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var activityTableView: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("ProfileActivityView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        
        activityTableView.delegate = self
        activityTableView.dataSource = self
        
        
        activityTableView.estimatedRowHeight = 200
        activityTableView.rowHeight = UITableView.automaticDimension
    }
}

extension ProfileActivityView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let nib = UINib.init(nibName: "PostTableViewCell", bundle: nil)
        activityTableView.register(nib, forCellReuseIdentifier: "PostCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as? PostTableViewCell
        return cell ?? PostTableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
