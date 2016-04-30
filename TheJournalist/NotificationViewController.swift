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
        
        notificationTable.registerNib(UINib(nibName: "NotificationCell", bundle: nil), forCellReuseIdentifier: "NotificationCell")
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
        let cell = notificationTable.dequeueReusableCellWithIdentifier("NotificationCell", forIndexPath: indexPath) as! NotificationCell
        
        cell.notificationTitleLabel.text = "あなたのコメントを甲斐駿介さんがクリップしました。1ポイント獲得です。"
        cell.boardDescriptionLabel.text = "SNSという業界に沿って言えば答えは自ずと賛成になる。圧倒的な資本と世界トップクラスの人材を抱えているフェイスブックに対抗する術はない。フェイスブックが既に獲得した何億人というユーザーの関係性…"
        cell.syncroLabel.text = "syncro\n6%"
        
        return cell
    }
}
