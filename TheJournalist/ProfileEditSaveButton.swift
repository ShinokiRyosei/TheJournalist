//
//  ProfileEditSaveButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileEditSaveButton: UIButton {

    override func drawRect(rect: CGRect) {
        self.setText()
        self.addBorder()
    }
    
    func setText() {
        self.setTitle("変更を保存", forState: .Normal)
        self.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
    }
    
    func addBorder() {
        self.layer.borderColor = UIColor.lightGrayColor().CGColor
        self.layer.borderWidth = 1.5
    }
}
