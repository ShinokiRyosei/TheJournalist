//
//  HomeBoardButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/06.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class HomeBoardButton: UIButton {

    override func drawRect(rect: CGRect) {
        self.addBorder()
    }
    
    func  addBorder() {
        self.layer.borderColor = UIColor.whiteColor().CGColor
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = 5.0
    }
}
