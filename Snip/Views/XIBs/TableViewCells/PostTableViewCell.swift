//
//  PostTableViewCell.swift
//  Snip
//
//  Created by Garry Fanata on 5/12/21.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var profilePpictureImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profilePpictureImage.makeImageCircle()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
