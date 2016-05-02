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
    
    func transitionToOtherAccount() {
        self.performSegueWithIdentifier("toOtherAccountView", sender: self)
    }
    
    func transitionToBoardView() {
        self.performSegueWithIdentifier("toBoardView", sender: self)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if dammy[indexPath.row]["action_type"] == 1 {
            let cell = notificationTable.dequeueReusableCellWithIdentifier("NotificationVoteCell", forIndexPath: indexPath) as! NotificationVoteCell
            
            cell.boardTitleLabel.text = "あなたのボードに甲斐駿介さんが賛成に投票しました。"
            cell.descriptionLabel.text = "SNSのという業界に沿って言えば答えは自ずと賛成になる。圧倒的な資本と世界トップクラスの人材を抱えているフェイスブックに対抗する術はない。フェイスブックが既に獲得した何億人というユーザーの関係性…"
            cell.syncroLabel.text = "96%"
            cell.otherAccountButton.addTarget(self, action: #selector(self.transitionToOtherAccount), forControlEvents: .TouchUpInside)
            cell.boardButton.addTarget(self, action: #selector(self.transitionToBoardView), forControlEvents: .TouchUpInside)
            
            return cell
        }else if dammy[indexPath.row]["action_type"] == 2 {
            let cell = notificationTable.dequeueReusableCellWithIdentifier("NotificationCommentCell", forIndexPath: indexPath) as! NotificationCommentCell
            
            cell.boardTitleLabel.text = "あなたのボードに甲斐駿介さんなど5ユーザーがコメントしました。1ポイント獲得です。"
            cell.descriptionLabel.text = "SNSのという業界に沿って言えば答えは自ずと賛成になる。圧倒的な資本と世界トップクラスの人材を抱えているフェイスブックに対抗する術はない。フェイスブックが既に獲得した何億人というユーザーの関係性…"
            cell.numberOfUserLabel.text = "他\n4ユーザー"
            cell.otherAccountButton.addTarget(self, action: #selector(self.transitionToOtherAccount), forControlEvents: .TouchUpInside)
            cell.boardButton.addTarget(self, action: #selector(self.transitionToBoardView), forControlEvents: .TouchUpInside)
            
            return cell
        }else {
            let cell = notificationTable.dequeueReusableCellWithIdentifier("NotificationClipCell", forIndexPath: indexPath) as! NotificationClipCell
            
            cell.boardTitleLabel.text = "あなたのコメントを甲斐駿介さんがクリップしました。1ポイント獲得です。"
            cell.descriptionLabel.text = "SNSのという業界に沿って言えば答えは自ずと賛成になる。圧倒的な資本と世界トップクラスの人材を抱えているフェイスブックに対抗する術はない。フェイスブックが既に獲得した何億人というユーザーの関係性…"
            cell.syncroLabel.text = "78%"
            cell.otherAccountButton.addTarget(self, action: #selector(self.transitionToOtherAccount), forControlEvents: .TouchUpInside)
            cell.boardButton.addTarget(self, action: #selector(self.transitionToBoardView), forControlEvents: .TouchUpInside)
            
            return cell
        }
    }
}
