//
//  VoteTitleLabel.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/22.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class VoteTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addUnderLine()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.addUnderLine()
    }

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.addUnderLine()
    }
    
    func addUnderLine() {
        let border = CALayer()
        border.borderColor = UIColor.blackColor().CGColor
        border.frame = CGRect(x: 0, y: self.bounds.height - 2, width: self.layer.bounds.width, height: 2.0)
        border.borderWidth = 2.0
        self.layer.addSublayer(border)
    }
}
