//
//  ProfileEditTextField.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileEditTextField: UITextField {

    override func drawRect(rect: CGRect) {
        self.changeBorderColor()
    }
    
    func changeBorderColor() {
        self.layer.borderColor = UIColor.lightGrayColor().CGColor
    }
}
