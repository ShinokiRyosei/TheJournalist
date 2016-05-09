//
//  BoardAgreeCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/08.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class BoardAgreeCell: UITableViewCell {
    
    @IBOutlet var boardProfileImageView: UIImageView!
    
    @IBOutlet var syncroLabel: UILabel!
    
    @IBOutlet var commentDetailLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
