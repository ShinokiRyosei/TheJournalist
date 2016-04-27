//
//  MakeBoardBarButton.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/26.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class MakeBoardBarButton: UIBarButtonItem {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setLabel()
    }
    
    private func setLabel() {
        let button = UIButton()
        button.addTarget(MakeBoardViewController(), action: #selector(MakeBoardViewController.didSelectPost), forControlEvents: .TouchUpInside)
        button.setImage(UIImage(named: "buttons-12.png"), forState: .Normal)
        button.frame = CGRect(x: 0, y: 0, width: 60, height: 20)
        self.customView = button
        
    }

}
