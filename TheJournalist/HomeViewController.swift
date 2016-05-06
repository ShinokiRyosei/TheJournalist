//
//  HomeViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class HomeViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var topicTable: UITableView!
    
    let dammy: [[String: Int]] = [["position": 1], ["position": 2,], ["position": 1], ["position": 2]]

    override func viewDidLoad() {
        super.viewDidLoad()

        topicTable.delegate = self
        topicTable.dataSource = self
        
        topicTable.registerNib(UINib(nibName: "HomeAgreeCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "HomeAgreeCell")
        topicTable.registerNib(UINib(nibName: "HomeDisagreeCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "HomeDisagreeCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        topicTable.estimatedRowHeight = 296
        topicTable.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dammy.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if dammy[indexPath.row]["position"] == 1 {
            let cell = topicTable.dequeueReusableCellWithIdentifier("HomeAgreeCell", forIndexPath: indexPath) as! HomeAgreeCell
            
            cell.topicTitleLabel.text = "ヘイトスピーチ対策法案、成立の可能性"
            cell.boardTitleLabel.text = "ヘイトスピーチを根絶することは不可能か？"
            cell.boardCommentLabel.text = "the JournalistはEmpowerにより承認欲求が満たされると思う。またさまざまな意見を見れる知見が広がるというのが面白い。これは使ってみないとわからない楽しさではないか。ここに自分の意見を投じるというのは、周りに自分の意見を晒すということで、自分の勉強不足を晒してしまうのではないかと緊張感があり、恥ずかしさもある。そこで思うのは、Homeで出すトピックやボードはプルでリフレッシュし、もっと多くのものを見れるようにすべきではないか。"
            cell.boardProfileImageView.image = UIImage(named: "profile_image.jpg")
            cell.syncroLabel.text = "96%"
            
            return cell
        }else {
            let cell = topicTable.dequeueReusableCellWithIdentifier("HomeDisagreeCell", forIndexPath: indexPath) as! HomeDisagreeCell
            
            cell.topicTitleLabel.text = "ヘイトスピーチ対策法案、成立の可能性"
            cell.boardTitleLabel.text = "ヘイトスピーチを根絶することは不可能か？"
            cell.boardCommentLabel.text = "the JournalistはEmpowerにより承認欲求が満たされると思う。またさまざまな意見を見れる知見が広がるというのが面白い。これは使ってみないとわからない楽しさではないか。ここに自分の意見を投じるというのは、周りに自分の意見を晒すということで、自分の勉強不足を晒してしまうのではないかと緊張感があり、恥ずかしさもある。そこで思うのは、Homeで出すトピックやボードはプルでリフレッシュし、もっと多くのものを見れるようにすべきではないか。"
            cell.boardProfileImageView.image = UIImage(named: "profile_image.jpg")
            cell.syncroLabel.text = "45%"
            
            return cell
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            self.transitionToTopicView()
    }
    
    func transitionToTopicView() {
        self.performSegueWithIdentifier("toTopicView", sender: self)
    }

}
