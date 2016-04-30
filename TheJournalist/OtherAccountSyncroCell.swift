//
//  OtherAccountSyncroCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class OtherAccountSyncroCell: UITableViewCell {
    
    @IBOutlet var boardTitleLabel: UILabel!
    
    @IBOutlet var otherUsernameLabel: UILabel!
    
    @IBOutlet var myPositionLabel: UILabel!
    
    @IBOutlet var otherPositionLabel: UILabel!
    
    @IBOutlet var syncroImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
