//
//  BoardPostButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/24.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class BoardPostButton: UIButton {

    override func drawRect(rect: CGRect) {
        self.addBorder()
    }
    
    func addBorder() {
        self.setTitle("あなたの意見を投稿する", forState: .Normal)
        self.setTitleColor(Color.lightGrayColor, forState: .Normal)
        self.titleLabel?.font = UIFont(name: "AxisStd-Regular", size: 15)
        self.layer.borderColor = UIColor.lightGrayColor().CGColor
        self.layer.borderWidth = 2.0
    }
}
