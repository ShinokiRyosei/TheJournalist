//
//  MakeBoardNumberLabel.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/23.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class MakeBoardNumberLabel: UILabel {

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.updatelayout()
    }
    
    func updatelayout() {
        self.textColor = Color.grayColor
        self.font = UIFont(name: "AxisStd-Regular", size: 12)
        
    }

}
