//
//  ProfileEditImageView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileEditImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.changeShape()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.changeShape()
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.changeShape()
    }
    
    func changeShape() {
        self.layer.cornerRadius = self.layer.bounds.width/2
        self.layer.masksToBounds = true
    }
}
