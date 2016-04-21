//
//  ProfileCategoryLabel.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/21.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileCategoryLabel: UILabel {

    override func drawRect(rect: CGRect) {
        // Drawing code
        self.updateLayout()
    }
    
    func updateLayout() {
        self.textColor = UIColor.grayColor()
        self.font = UIFont(name: "AxisStd-Regular", size: 24)
    }

}
