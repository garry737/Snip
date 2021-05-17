//
//  ProfileFavoritesView.swift
//  Snip
//
//  Created by Garry Fanata on 5/14/21.
//

import UIKit

class ProfileFavoritesView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var favoriteCollectionView: UICollectionView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("ProfileFavoritesView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        favoriteCollectionView.delegate = self
        favoriteCollectionView.dataSource = self
        
    }
    
}

extension ProfileFavoritesView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let nib = UINib.init(nibName: "FavoriteCollectionViewCell", bundle: nil)
        favoriteCollectionView.register(nib, forCellWithReuseIdentifier: "FavoriteCollectionViewCell")
        let cell = favoriteCollectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteCollectionViewCell", for: indexPath) as? FavoriteCollectionViewCell
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat((collectionView.frame.size.width / 2) - 6), height: CGFloat((collectionView.frame.size.width / 2) - 6))
    }
    
}
