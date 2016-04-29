//
//  TopicViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/23.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

//ホームから遷移してTopicに応じたBoardを表示します
class TopicViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var topicImageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var contentLabel: UILabel!
    
    @IBOutlet var topicTable: UITableView!
    
    var comment: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicTable.registerNib(UINib(nibName: "TopicCell",bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "TopicCell")
        topicTable.registerNib(UINib(nibName: "MakeBoardCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "MakeBoardCell")
        
        topicTable.delegate = self
        topicTable.dataSource = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        topicTable.estimatedRowHeight = 120
        topicTable.rowHeight = UITableViewAutomaticDimension
        
        topicTable.tableFooterView = UIView()
        
        self.dammy()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //後で消す
    func dammy() {
        titleLabel.text = "東京五輪2020エンブレム問題"
        contentLabel.text = "4年後、東京でオリンピック・パラリンピックが開催される。佐藤研二郎氏のエンブレム盗作疑惑が取り沙汰された。論点は、これこれこういうもので"
    }
    
    func transition() {
        self.performSegueWithIdentifier("toVoteView", sender: self)
    }
    
    func transitionToMakeBoard() {
        self.performSegueWithIdentifier("toMakeBoard", sender: self)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row < 3 {
            self.transition()
        }else {
            self.transitionToMakeBoard()
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row < 3 {
            let cell = topicTable.dequeueReusableCellWithIdentifier("TopicCell", forIndexPath: indexPath) as! TopicCell
            
            cell.voteNumberLabel.text = "124"
            cell.commentLabel.text = "佐野研二郎氏のデザイン事務所、MR_DESIGNの危機管理能力は実際大変すばらしいものであった"
            
            return cell
        }else {
            let cell = topicTable.dequeueReusableCellWithIdentifier("MakeBoardCell", forIndexPath: indexPath) as! MakeBoardCell
            
            return cell
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toVoteView" {
            let voteVC = segue.destinationViewController as! VoteViewController
            voteVC.content = "佐野研二郎氏のデザイン事務所、MR_DESIGNの危機管理能力は実際大変すばらしいものであった"
            
        }
    }
}
