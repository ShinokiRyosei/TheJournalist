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
    
    //Comment 1, Vote 2, NoVote 3
    let dammyContent: [[String: Int]] = [["actionType": 1], ["actionType": 2], ["actionType": 3], ["actionType": 1]]

    override func viewDidLoad() {
        super.viewDidLoad()

        notificationTable.delegate = self
        notificationTable.dataSource = self
        
        notificationTable.registerNib(UINib(nibName: "NotificationCell", bundle: nil), forCellReuseIdentifier: "NotificationCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        notificationTable.estimatedRowHeight = 64
        notificationTable.rowHeight = UITableViewAutomaticDimension
        
        notificationTable.tableFooterView = UIView()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dammyContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = notificationTable.dequeueReusableCellWithIdentifier("NotificationCell", forIndexPath: indexPath) as! NotificationCell
        
        return cell
    }
}
