//
//  CommentFbButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/20.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit
import FontAwesome_swift

class CommentFbButton: UIButton {

    override func drawRect(rect: CGRect) {
        // Drawing code
        self.updateLayout()
    }
    
    func updateLayout()  {
        self.setTitle(String.fontAwesomeIconWithName(.FacebookF), forState: .Normal)
        self.titleLabel?.font = UIFont.fontAwesomeOfSize(24)
        self.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        self.backgroundColor = UIColor.grayColor()
        self.layer.cornerRadius = 5.0
        
        
    }
 

}
