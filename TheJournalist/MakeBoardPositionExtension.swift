//
//  MakeBoardPositionExtension.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/26.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

extension UIButton {
    
    func selectAgree() {
        self.setCorner(UIColor.redColor())
    }
    
    func selectDisagree() {
        self.setCorner(UIColor.blueColor())
    }
    
    func unselectAgree() {
        self.updateUnselect()
    }
    
    func unselectDisagree() {
        self.updateUnselect()
    }
    
    private func setCorner(color: UIColor) {
        self.layer.cornerRadius = 5.0
        self.layer.borderWidth = 3.0
        self.layer.borderColor = color.CGColor
        self.setTitleColor(color, forState: .Normal)
    }
    
    private func updateUnselect() {
        self.layer.borderWidth = 0
        self.setTitleColor(UIColor.lightGrayColor(), forState: .Normal)
    }
}
