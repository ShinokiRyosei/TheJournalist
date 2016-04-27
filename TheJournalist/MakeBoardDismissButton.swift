//
//  MakeBoardDismissButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/26.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class MakeBoardDismissButton: UIBarButtonItem {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setIcon()
    }
    
    private func setIcon() {
        let button = UIButton()
        button.addTarget(MakeBoardViewController(), action: #selector(MakeBoardViewController.dismiss), forControlEvents: .TouchUpInside)
        button.setImage(UIImage(named: "close"), forState: .Normal)
        button.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        self.customView = button
    }

}
