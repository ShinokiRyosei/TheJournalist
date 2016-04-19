//
//  HomeTopicTitleLabel.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class HomeTopicTitleLabel: UILabel {
    
    override func drawRect(rect: CGRect) {
        
    }

    func updateLayout()  {
        self.textAlignment = .Right
        self.textColor = UIColor.whiteColor()
        self.font = UIFont(name: "Axis-Std-Regular", size: 24)
    }

}
