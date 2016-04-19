//
//  NavigationController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.updateNavigationBar()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func updateNavigationBar() {
        //NavigationBarの色を白に
//        self.navigationController?.navigationBar.barTintColor = Colors.mainColor
        
        
        self.setLogoOnNavigationBar()
        
        
    }
    
    func setLogoOnNavigationBar() {
//        self.title = "aaa"
//        self.navigationItem.title = "The Journalist"
       
//        self.navigationController?.navigationBar.topItem?.title = "The Journalist"
        
    }
    

}
