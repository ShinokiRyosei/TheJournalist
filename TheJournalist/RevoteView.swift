//
//  RevoteView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/01.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class RevoteView: UIView {
    
    @IBOutlet var containerView: UIView!

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.setBackground()
    }
    
    func setBackground() {
        self.backgroundColor = UIColor.lightGrayColor() 
        self.containerView.backgroundColor = Color.lightGrayColor
    }
}
