//
//  NotificationViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/27.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NotificationViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var notificationTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        notificationTable.delegate = self
        notificationTable.dataSource = self
        
        notificationTable.registerNib(UINib(nibName: "NotificationVoteCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NotificationVoteCell")
        notificationTable.registerNib(UINib(nibName: "NotificationCommentCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NotificationCommentCell")
        notificationTable.registerNib(UINib(nibName: "NotificationNoVoteCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NotificationNoVoteCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = notificationTable.dequeueReusableCellWithIdentifier("", forIndexPath: indexPath) as! NotificationVoteCell
        
        return cell
    }
}
