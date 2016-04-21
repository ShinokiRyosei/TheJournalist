//
//  ProfileImageView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/20.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.upadteLayout()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.upadteLayout()
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.upadteLayout()
    }
    
    func upadteLayout()  {
        self.layer.cornerRadius = self.layer.bounds.width/2
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.redColor().CGColor
    }

}
