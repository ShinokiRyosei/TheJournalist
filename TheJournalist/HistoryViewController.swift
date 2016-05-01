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
        
        historyTable.registerNib(UINib(nibName: "HistoryVoteCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "HistoryVoteCell")
        historyTable.registerNib(UINib(nibName: "HistoryCommentCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "HistoryCommentCell")
        historyTable.registerNib(UINib(nibName: "HistoryNoVoteCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "HistoryNoVoteCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        historyTable.estimatedRowHeight = 67
        historyTable.rowHeight = UITableViewAutomaticDimension
        
        historyTable.tableFooterView = UIView()
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
            let cell = historyTable.dequeueReusableCellWithIdentifier("HistoryCommentCell", forIndexPath: indexPath) as! HistoryCommentCell
            
            cell.boardTitleLabel.text = "フェイスブックの寡占が進み、フェイスブックを超えるプラットフォームはもう現れない"
            cell.boardCommentLabel.text = "SNSという業界に沿って言えば答えは自ずと賛成になる。圧倒的な資本と世界トップクラスの人材を抱えているフェイスブック…"
            cell.historyCategoryLabel.text = "ボードで賛成派のコメントを投稿しました"
            
            return cell
        }else if dammyContent[indexPath.row]["actionType"] == 2 {
            let cell = historyTable.dequeueReusableCellWithIdentifier("HistoryVoteCell", forIndexPath: indexPath) as! HistoryVoteCell
            
            cell.boardTitleLabel.text = "佐藤研二郎氏のデザイン事務所、MR_DESIGNの危機管理能力は実際大変素晴らしいものであった"
            cell.historyCategoryLabel.text = "ボードで反対に投票しました"
            
            return cell
            
        }else {
            let cell = historyTable.dequeueReusableCellWithIdentifier("HistoryNoVoteCell", forIndexPath: indexPath) as! HistoryNoVoteCell
            
            cell.boardTitleLabel.text = "新デザインの選考はマイナンバーを用いたウェブ上での国民投票にするべきである"
            cell.historyCategoryLabel.text = "ボードを閲覧、未だ投票していません"
            
            return cell
        }
    }
}
