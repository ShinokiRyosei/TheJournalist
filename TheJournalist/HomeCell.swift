//
//  HomeCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {
    
    @IBOutlet var containerView: UIView!

    @IBOutlet var topicImageView: UIImageView!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet weak var topicTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.lightGrayColor()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
