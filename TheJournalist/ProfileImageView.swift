//
//  ProfileImageView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/20.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileImageView: UIImageView {
    
    override func drawRect(rect: CGRect) {
        self.upadteLayout()
    }
    
    func upadteLayout()  {
        self.layer.cornerRadius = self.layer.bounds.width/2
        self.layer.borderWidth = 2.0
    }

}
