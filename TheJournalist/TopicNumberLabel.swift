//
//  TopicNumberLabel.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/24.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class TopicNumberLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.updateFontSize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.updateFontSize()
    }

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.updateFontSize()
    }
    
    func updateFontSize() {
        
    }

}
