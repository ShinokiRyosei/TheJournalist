//
//  HomeDisagreeCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/06.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class HomeDisagreeCell: UITableViewCell {
    
    @IBOutlet var topicImageView: UIImageView!
    
    @IBOutlet var topicTitleLabel: UILabel!
    
    @IBOutlet var boardTitleLabel: UILabel!
    
    @IBOutlet var boardProfileImageView: UIImageView!
    
    @IBOutlet var syncroLabel: UILabel!
    
    @IBOutlet var boardCommentLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
