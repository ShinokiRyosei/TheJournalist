//
//  MakeBoardCell.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/28.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class MakeBoardCell: UITableViewCell {
    
    @IBOutlet var hiddenLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor.lightGrayColor()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
