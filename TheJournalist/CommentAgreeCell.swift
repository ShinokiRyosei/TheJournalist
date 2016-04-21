//
//  CommentAgreeCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/21.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentAgreeCell: UITableViewCell {
    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var contentLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
