//
//  CommentCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/20.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var commentContentLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
