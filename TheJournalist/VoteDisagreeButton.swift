//
//  VoteDisagreeButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/22.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class VoteDisagreeButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.updateLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.updateLayout()
    }
    
    func updateLayout() {
        
    }

}
