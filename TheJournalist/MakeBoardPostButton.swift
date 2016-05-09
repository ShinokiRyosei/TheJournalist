//
//  MakeBoardPostButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/23.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class MakeBoardPostButton: UIButton {

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
    }
    
    func addBorder() {
        self.layer.borderColor = UIColor.lightGrayColor().CGColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 5.0
        self.setTitle("投稿", forState: .Normal)
        self.setTitleColor(Color.lightGrayColor, forState: .Normal)
    }

}
