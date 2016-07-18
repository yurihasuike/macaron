//
//  ContentListCell.swift
//  Macaron
//
//  Created by Yutaro Muta on 2016/07/13.
//  Copyright © 2016年 Team Hasuike. All rights reserved.
//

import UIKit

class ContentListCell: UITableViewCell {

    @IBOutlet weak var rankingLabel: UILabel!
    @IBOutlet weak var instaImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setProperties(item: Int, image: UIImage) {
        rankingLabel.text = "\(item)"
        instaImageView.image = image
    }
    
    override func prepareForReuse() {
        rankingLabel.text = nil
        instaImageView.image = nil
    }

}
