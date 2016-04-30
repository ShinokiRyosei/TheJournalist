//
//  NotificationCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NotificationCell: UITableViewCell {
    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var syncroLabel: UILabel!
    
    @IBOutlet var notificationTitleLabel: UILabel!
    
    @IBOutlet var boardDescriptionLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
