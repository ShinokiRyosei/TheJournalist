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
        self.updateLayout()
    }
    
    private func updateLayout() {
        self.setTitle(String.fontAwesomeIconWithName(.Clipboard)+"  クリップ", forState: .Normal)
        self.setTitleColor(Color.grayColor, forState: .Normal)
        self.backgroundColor = UIColor.whiteColor()
    }

}
