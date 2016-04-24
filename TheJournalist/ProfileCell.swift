//
//  ProfileCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/21.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var contentLabel: UILabel!
    
    @IBOutlet var categoryLabel: UILabel!
    
    @IBOutlet var agreeBar: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
