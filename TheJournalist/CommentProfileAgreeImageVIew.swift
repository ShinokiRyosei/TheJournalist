//
//  CommentProfileAgreeImageVIew.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/21.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentProfileAgreeImageVIew: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.updateLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.updateLayout()
    }

    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.updateLayout()
    }
    
    func updateLayout() {
        self.layer.cornerRadius = self.layer.bounds.width/2
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.redColor().CGColor
        self.layer.masksToBounds = true
    }

}
