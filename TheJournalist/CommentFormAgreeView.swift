//
//  CommentFormAgreeView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/25.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentFormAgreeView: UIView {
    
    @IBOutlet var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setText()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setText()
    }

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        self.setText()
    }
    
    private func setText() {
        
    }

}
