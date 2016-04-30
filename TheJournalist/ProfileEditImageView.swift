//
//  ProfileEditImageView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileEditImageView: UIImageView {
    
    override func drawRect(rect: CGRect) {
        self.changeShape()
    }
    
    func changeShape() {
        self.layer.cornerRadius = self.layer.bounds.width/2
        self.layer.masksToBounds = true
    }
}
