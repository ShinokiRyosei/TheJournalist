//
//  NotificationCommentCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/29.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NotificationCommentCell: UITableViewCell {
    
    @IBOutlet var boardTitleLabel: UILabel!
    
    @IBOutlet var boardCommentLabel: UILabel!
    
    @IBOutlet var notificationCategoryLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.setNeedsDisplay()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
