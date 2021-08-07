//
//  CategoryTableViewCell.swift
//  Fun Meme
//
//  Created by Subendran on 07/08/21.
//  Copyright © 2021 Subendran. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionViewCategory: UICollectionView!
   let categoryNames = ["All","Animate","Ipl","Sad post","Politics","Movie","Game"]
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension CategoryTableViewCell: UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryNameCollectionViewCell", for: indexPath) as! CategoryNameCollectionViewCell
        cell.labelCategoryName.text = categoryNames[indexPath.row]
        return cell
    }
    
    
}
