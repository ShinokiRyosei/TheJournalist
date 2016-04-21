//
//  CommentClipButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/21.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit
import FontAwesome_swift

class CommentClipButton: UIButton {

    
    override func drawRect(rect: CGRect) {
        // Drawing code
        self.updateLayout()
    }
    
    private func  updateLayout() {
        self.setTitle(String.fontAwesomeIconWithName(.Paperclip) + "\nクリップ", forState: .Normal)
        self.setTitleColor(UIColor.grayColor(), forState: .Normal)
        self.titleLabel?.font = UIFont.fontAwesomeOfSize(24)
        self.layer.cornerRadius = 5.0
        self.backgroundColor = UIColor.whiteColor()
    }
}
