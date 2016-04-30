//
//  ProfileEditFacebookButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileEditFacebookButton: UIButton {
    
    override func drawRect(rect: CGRect) {
        self.setImageAndText()
        self.setBorder()
    }
    
    func setBorder()  {
        self.layer.borderColor = UIColor.lightGrayColor().CGColor
        self.layer.borderWidth = 1.0
    }
    
    func setImageAndText() {
        let imageView = UIImageView(frame: CGRectMake(2.5, 5, 20, 20))
        imageView.image = UIImage(named: "profile-edit-03.png")
        self.addSubview(imageView)
        
        let label = UILabel(frame: CGRectMake(30, 0, 240, 35))
        label.text = "Facebookと連携する"
        label.font = UIFont(name: "AxisStd-Regular", size: 15)
        self.addSubview(label)
    }
}
