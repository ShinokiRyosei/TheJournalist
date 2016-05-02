//
//  NotificationVoteCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/01.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NotificationVoteCell: UITableViewCell {
    
    @IBOutlet var boardTitleLabel: UILabel!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var syncroLabel: UILabel!
    
    @IBOutlet var otherAccountButton: UIButton!
    
    @IBOutlet var boardButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
