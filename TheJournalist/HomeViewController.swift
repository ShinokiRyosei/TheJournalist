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

    override func viewDidLoad() {
        super.viewDidLoad()

        topicTable.delegate = self
        topicTable.dataSource = self
        
        topicTable.registerNib(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        topicTable.estimatedRowHeight = 240
        topicTable.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = topicTable.dequeueReusableCellWithIdentifier("HomeCell", forIndexPath: indexPath) as! HomeCell
        
        cell.topicTitleLabel.text = "東京五輪2020エンブレム問題"
        cell.descriptionLabel.text = "4年後、東京でオリンピック・パラリンピックが開催される。佐藤研二郎氏のエンブレム盗作疑惑が取り沙汰された。論点は、これこれこういうもので"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 1 {
            self.transitionToTopicView()
        }else if indexPath.row == 2 {
            self.transitoinToCommentView()
        }
        
    }
    
    func transitionToTopicView() {
        self.performSegueWithIdentifier("toTopicView", sender: self)
    }
    
    func transitoinToCommentView() {
        self.performSegueWithIdentifier("toCommentView", sender: self)
    }

}
