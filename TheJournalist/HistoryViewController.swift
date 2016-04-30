//
//  HistoryViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/29.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class HistoryViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var historyTable: UITableView!
    
    //Comment 1, Vote 2, NoVote 3
    let dammyContent: [[String: Int]] = [["actionType": 1], ["actionType": 2], ["actionType": 3], ["actionType": 1]]

    override func viewDidLoad() {
        super.viewDidLoad()

        historyTable.delegate = self
        historyTable.dataSource = self
        
        historyTable.registerNib(UINib(nibName: "NotificationVoteCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NotificationVoteCell")
        historyTable.registerNib(UINib(nibName: "NotificationCommentCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NotificationCommentCell")
        historyTable.registerNib(UINib(nibName: "NotificationNoVoteCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "NotificationNoVoteCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dammyContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if dammyContent[indexPath.row]["actionType"] == 1{
            let cell = historyTable.dequeueReusableCellWithIdentifier("NotificationCommentCell", forIndexPath: indexPath) as! NotificationCommentCell
            
            cell.boardTitleLabel.text = "フェイスブックの寡占が進み、フェイスブックを超えるプラットフォームはもう現れない"
            cell.boardCommentLabel.text = "SNSという業界に沿って言えば答えは自ずと賛成になる。圧倒的な資本と世界トップクラスの人材を抱えているフェイスブック…"
            cell.notificationCategoryLabel.text = "ボードで賛成派のコメントを投稿しました"
            
            return cell
        }else if dammyContent[indexPath.row]["actionType"] == 2 {
            let cell = historyTable.dequeueReusableCellWithIdentifier("NotificationVoteCell", forIndexPath: indexPath) as! NotificationVoteCell
            
            cell.boardTitleLabel.text = "佐藤研二郎氏のデザイン事務所、MR_DESIGNの危機管理能力は実際大変素晴らしいものであった"
            cell.notificationCategoryLabel.text = "ボードで反対に投票しました"
            
            return cell
            
        }else {
            let cell = historyTable.dequeueReusableCellWithIdentifier("NotificationNoVoteCell", forIndexPath: indexPath) as! NotificationNoVoteCell
            
            cell.boardTitleLabel.text = "新デザインの選考はマイナンバーを用いたウェブ上での国民投票にするべきである"
            cell.notificationCategoryLabel.text = "ボードを閲覧、未だ投票していません"
            
            return cell
        }
    }
}
