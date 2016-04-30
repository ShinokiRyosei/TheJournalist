//
//  NotificationProfileImageView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NotificationProfileImageView: UIImageView {
    
    override func drawRect(rect: CGRect) {
        updateLayout()
    }
    
    func updateLayout() {
        self.layer.cornerRadius = self.layer.bounds.width/2
        self.layer.masksToBounds = true
    }
}
