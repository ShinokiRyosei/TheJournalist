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
    }
    
    func changeCustom() {
    }
    
    func setImageAndText() {
        let imageView  = UIImageView (frame: CGRectMake(2.5, 2.5, 25, 25))
        imageView.image = UIImage(named: "profile-edit-04.png")
        self.addSubview(imageView)
//        self.setImage(UIImage(named: ""), forState: .Normal)
        self.titleEdgeInsets = UIEdgeInsetsMake(2.5, 30, 1, 120)
        self.setTitle("パスワードを変更", forState: .Normal)
        self.titleLabel?.font = UIFont(name: "AxisStd-Regular", size: 15)
    }
}
