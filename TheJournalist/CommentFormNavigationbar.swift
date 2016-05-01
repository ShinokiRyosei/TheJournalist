//
//  CommentFormNavigationbar.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/24.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentFormNavigationbar: UINavigationBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addUnderline()
        self.setLogo()
        self.changeColor()
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setLogo()
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.setLogo()
    }
    
    private func changeColor()  {
        self.barTintColor = UIColor.whiteColor()
    }
    
    private func setImage() {
    }
    
    private func setLogo() {
        

    }
    
    
    private func addUnderline() {
       let border = CALayer()
        border.borderColor = UIColor.grayColor().CGColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - 3, width: self.frame.size.width, height: 3)
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
