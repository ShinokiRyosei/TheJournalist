//
//  CommentFormDismissButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/25.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit
import FontAwesome_swift

class CommentFormDismissButton: UIBarButtonItem {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setIcon()
    }
    
    private func setIcon() {
        let containerView = UIView(frame: CGRectMake(0, 0, 20, 20))
        let imageView = UIImageView(frame: CGRectMake(0, 0, 20, 20))
        imageView.image = UIImage(named: "close")
        containerView.addSubview(imageView)
        self.customView = containerView
    }

}
