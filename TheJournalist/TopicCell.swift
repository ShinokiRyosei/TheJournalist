//
//  TopicCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/23.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class TopicCell: UITableViewCell {
    
    @IBOutlet var commentLabel: UILabel!
    
    @IBOutlet var voteNumberLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.changeBackground()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func changeBackground() {
        self.backgroundColor = UIColor.grayColor()
        
    }
    
}
