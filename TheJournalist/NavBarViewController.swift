//
//  NavBarViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/24.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit
import SWRevealViewController

class NavBarViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var searchBar: UITextField!
    
    @IBOutlet var profileLabel: UILabel!
    
    @IBOutlet var profileImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().rearViewRevealWidth = self.view.frame.width - 64
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
}
