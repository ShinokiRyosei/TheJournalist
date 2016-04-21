//
//  HomeTopicTitleLabel.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class HomeTopicTitleLabel: UILabel {
    
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

    func updateLayout()  {
        self.textAlignment = .Left
        self.font = UIFont(name: "Axis-Std-Regular", size: 24)
        self.textColor = UIColor.whiteColor()
    }

}
