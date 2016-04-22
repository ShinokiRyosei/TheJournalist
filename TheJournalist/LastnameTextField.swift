//
//  LastnameTextField.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/22.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class LastnameTextField: UITextField {

    override func drawRect(rect: CGRect) {
        self.addIcon()
    }
    
    func addIcon() {
        let imageView = UIImageView(frame: CGRectMake(5, 2.5, 25, 25))
        imageView.image = UIImage(named: "lastnameIcon.png")
        self.addSubview(imageView)
        
        let leftView = UIView(frame: CGRectMake(0, 0, 21, 30))
        self.leftView = leftView
        self.leftViewMode = UITextFieldViewMode.Always
    }

}
