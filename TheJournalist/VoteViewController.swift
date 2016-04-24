//
//  VoteViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/22.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class VoteViewController: NavigationViewController {
    
    @IBOutlet var contentLabel: UILabel!
    
    var content: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        contentLabel.text = content
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectAgree() {
        self.transition()
    }
    
    @IBAction func selectDisagree() {
        self.transition()
    }
    
    @IBAction func selectLater() {
        self.transition()
    }
    
    func transition() {
        self.performSegueWithIdentifier("toBoardView", sender: self)
    }
}
