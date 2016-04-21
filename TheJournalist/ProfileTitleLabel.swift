//
//  ProfileTitleLabel.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/21.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileTitleLabel: UILabel {

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
        self.textColor = UIColor.grayColor()
        self.font = UIFont(name: "AxisStd-Regular", size: 20)
        
    }

}
