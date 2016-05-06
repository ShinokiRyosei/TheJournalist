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
    
    private func updateLayout()  {
        self.setTitle(String.fontAwesomeIconWithName(.FacebookSquare), forState: .Normal)
        self.titleLabel?.font = UIFont.fontAwesomeOfSize(24)
        self.setTitleColor(Color.grayColor, forState: .Normal)
    }
 

}
