//
//  NavigationBarExtension.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/26.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

extension UINavigationBar {
    
    func updateLayout() {
        self.changeColor()
        self.setLogo()
        self.addUnderline()
    }
    
    private func changeColor()  {
        self.barTintColor = UIColor.whiteColor()
    }
    
    private func setLogo() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
        imageView.image = UIImage(named: "logo.png")
        self.topItem?.titleView = imageView
    }
    
    
    private func addUnderline() {
        let border = CALayer()
        border.borderColor = UIColor.grayColor().CGColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - 10, width: self.frame.size.width, height: 3)
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
