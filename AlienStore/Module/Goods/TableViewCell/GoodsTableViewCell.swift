//
//  GoodsTableViewCell.swift
//  AlienStore
//
//  Created by Rio Swarawan on 12/27/17.
//  Copyright © 2017 Rio Swarawan. All rights reserved.
//

import UIKit

class GoodsTableViewCell: UITableViewCell {

    @IBOutlet weak var goodsImage: UIImageView!
    @IBOutlet weak var goodsNameLabel: UILabel!
    @IBOutlet weak var goodsBrandLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
