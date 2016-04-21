//
//  CommentTweetButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/20.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentTweetButton: UIButton {

    override func drawRect(rect: CGRect) {
        // Drawing code
        self.updateLayout()
    }
    
    private func updateLayout()  {
        self.setTitle(String.fontAwesomeIconWithName(.Twitter), forState: .Normal)
        self.titleLabel?.font = UIFont.fontAwesomeOfSize(24)
        self.setTitleColor(UIColor.grayColor(), forState: .Normal)
        
    }
 

}
