//
//  NotificationVoteCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/29.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NotificationVoteCell: UITableViewCell {
    
    @IBOutlet var boardTitleLabel: UILabel!
    
    @IBOutlet var notificationCategoryLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
