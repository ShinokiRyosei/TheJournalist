//
//  ProfileEditChangePasswordButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileEditChangePasswordButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func drawRect(rect: CGRect) {
        self.setImageAndText()
        self.setBorder()
    }
    
    func setBorder() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.lightGrayColor().CGColor
    }
    
    func setImageAndText() {
        let imageView  = UIImageView (frame: CGRectMake(2.5, 5, 20, 20))
        imageView.image = UIImage(named: "profile-edit-04.png")
        self.addSubview(imageView)
        let label = UILabel(frame: CGRectMake(30, 0, 240, 35))
        label.text = "パスワードを変更"
        label.font = UIFont(name: "AxisStd-Regular", size: 15)
        self.addSubview(label)
    }
}
