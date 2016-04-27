//
//  NavbarSearchTextField.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/24.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NavbarSearchTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func drawRect(rect: CGRect) {
        self.setIcon()
        self.setPlaceholder()
    }
    
    func setIcon() {
        let imageView = UIImageView(frame: CGRect(x: 5, y: 2.5, width: 25, height: 25))
        imageView.image = UIImage(named: "mobile-navbar-for-may1st-02.png")
        self.addSubview(imageView)
        let leftView = UIView(frame: CGRectMake(0, 0, 21, 35))
        self.leftView = leftView
        self.leftViewMode = UITextFieldViewMode.Always
    }
    
    func setPlaceholder() {
        self.placeholder = "トピックやボードを検索する"
    }
}
