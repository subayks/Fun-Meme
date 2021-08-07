//
//  MemeListTableViewCell.swift
//  Fun Meme
//
//  Created by Subendran on 07/08/21.
//  Copyright © 2021 Subendran. All rights reserved.
//

import UIKit

class MemeListTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageViewMeme: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
