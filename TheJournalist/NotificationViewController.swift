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
    
    let dammy: [[String: Int]] = [["action_type": 1], ["action_type": 2], ["action_type": 3], ["action_type": 1]]

    override func viewDidLoad() {
        super.viewDidLoad()

        notificationTable.delegate = self
        notificationTable.dataSource = self
        
        notificationTable.registerNib(UINib(nibName: "NotificationVoteCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NotificationVoteCell")
        notificationTable.registerNib(UINib(nibName: "NotificationCommentCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NotificationCommentCell")
        notificationTable.registerNib(UINib(nibName: "NotificationClipCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NotificationClipCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        notificationTable.estimatedRowHeight = 64
        notificationTable.rowHeight = UITableViewAutomaticDimension
        
        notificationTable.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if dammy[indexPath.row]["action_type"] == 1 {
            let cell = notificationTable.dequeueReusableCellWithIdentifier("NotificationVoteCell", forIndexPath: indexPath) as! NotificationVoteCell
            
            return cell
        }else if dammy[indexPath.row]["action_type"] == 2 {
            let cell = notificationTable.dequeueReusableCellWithIdentifier("NotificationCommentCell", forIndexPath: indexPath) as! NotificationCommentCell
            
            return cell
        }else {
            let cell = notificationTable.dequeueReusableCellWithIdentifier("NotificationClipCell", forIndexPath: indexPath) as! NotificationClipCell
            
            return cell
        }
    }
}
