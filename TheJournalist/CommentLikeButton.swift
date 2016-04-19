//
//  CommentLikeButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/20.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentLikeButton: UIButton {

    
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    
    func updateLayout() {
        self.setTitle(String.fontAwesomeIconWithName(.Heart), forState: .Normal)
        self.titleLabel?.font = UIFont.fontAwesomeOfSize(30)
        self.setTitleColor(UIColor.grayColor(), forState: .Normal)
        
    }

}
