//
//  HomeOtherCommentButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/06.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class HomeOtherCommentButton: UIButton {

    override func drawRect(rect: CGRect) {
        self.addBorder()
        self.setTxtColor()
    }
    
    func addBorder() {
        self.titleLabel?.textColor = UIColor.blackColor()
        self.backgroundColor = UIColor.whiteColor()
        
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.blackColor().CGColor
    }
    
    func setTxtColor() {
        self.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.setTitleColor(UIColor.blackColor(), forState: .Highlighted)
    }

}
