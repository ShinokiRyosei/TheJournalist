//
//  PasswordTextField.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/22.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class PasswordTextField: UITextField {

    override func drawRect(rect: CGRect) {
        self.addIcon()
        self.addBorder()
    }
    
    func addIcon() {
        let imageView = UIImageView(frame: CGRectMake(5, 2.5, 25, 25))
        imageView.image = UIImage(named: "passwordIcon.png")
        self.addSubview(imageView)
        
        let leftView = UIView(frame: CGRectMake(0, 0, 21,30))
        self.leftView = leftView
        self.leftViewMode = UITextFieldViewMode.Always
    }
    
    func addBorder() {
        self.layer.borderColor = UIColor.blackColor().CGColor
        self.layer.borderWidth = 1.5
        self.layer.cornerRadius = 5.0
    }
}
