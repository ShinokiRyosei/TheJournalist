//
//  OtherAccountPointCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/02.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class OtherAccountPointCell: UITableViewCell {
    
    @IBOutlet var boardTitleLabel: UILabel!
    
    @IBOutlet var pointLabel: UILabel!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var clipButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
