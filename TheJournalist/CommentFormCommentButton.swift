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
        let containerView = UIView(frame: CGRectMake(0, 0, 60, 25))
        let imageView = UIImageView(frame: CGRectMake(0, 0, 60, 25))
        imageView.image = UIImage(named: "buttons-02.png")
        containerView.addSubview(imageView)
        self.customView = containerView
        
    }

}
