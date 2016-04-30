//
//  OtherAccountViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class OtherAccountViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var usernameLabel: UILabel!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var accountTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        accountTable.delegate = self
        accountTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    }
}
