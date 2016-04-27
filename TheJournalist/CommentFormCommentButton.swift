//
//  CommentFormCommentButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/25.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentFormCommentButton: UIBarButtonItem {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setLabel()
    }
    
    private func setLabel() {
        let button = UIButton()
        button.addTarget(CommentFormViewController(), action: #selector(CommentFormViewController.selectComment), forControlEvents: .TouchUpInside)
        button.setImage(UIImage(named: "buttons-02.png"), forState: .Normal)
        button.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
        self.customView = button
        
    }

}
