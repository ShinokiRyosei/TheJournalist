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
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.changeColor()
        self.setLogo()
    }

    override func drawRect(rect: CGRect) {
        
    }
    
    func changeColor()  {
        self.barTintColor = UIColor.whiteColor()
    }
    
    func setImage() {
        self.setBackgroundImage(UIImage(named: "logo")?.resizableImageWithCapInsets(UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0), resizingMode: .Stretch), forBarMetrics: .Default)
    }
    
    func setLogo() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 60, height: 20))
        imageView.image = UIImage(named: "logo.png")
        self.topItem?.titleView = imageView
    }
    
    
    func addUnderline() {
       let border = CALayer()
        border.borderColor = UIColor.grayColor().CGColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - 3, width: self.frame.size.width, height: 3)
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
