//
//  ProfileClipButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/21.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileClipButton: UIButton {


    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    
    private func updateLayout() {
        self.setTitle(String.fontAwesomeIconWithName(.Clipboard)+"  クリップ", forState: .Normal)
        
        self.setTitleColor(UIColor.grayColor(), forState: .Normal)
        
        self.backgroundColor = UIColor.whiteColor()
    }

}