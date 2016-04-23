//
//  MakeBoardViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/23.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class MakeBoardViewController: NavigationViewController {

    @IBOutlet var topicLabel: MakeBoardTitleLabel!
    
    @IBOutlet var makeBoardTextView: UITextView!
    
    @IBOutlet var descriptionAgreeLabel: UILabel!
    
    @IBOutlet var boardDescriptionTextView: UITextView!
    
    @IBOutlet var descriptionNumberLabel: UILabel!
    
    @IBOutlet var postButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
