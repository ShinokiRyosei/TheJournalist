//
//  CommentViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var commentAgreeTable: UITableView!
    
    @IBOutlet var commentDisagreeTable: UITableView!
    
    @IBOutlet var commentTitleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentAgreeTable.delegate = self
        commentAgreeTable.dataSource = self
        
        commentDisagreeTable.delegate = self
        commentDisagreeTable.dataSource = self
        
        commentAgreeTable.registerNib(UINib(nibName: "CommentCell", bundle: nil), forCellReuseIdentifier: "CommentCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        commentTitleLabel.text = "佐野研二郎氏のデザイン事務所、MR_DESIGNの危機管理能力は実際大変素晴らしいものであった"
        
        commentAgreeTable.estimatedRowHeight = 90
        commentAgreeTable.rowHeight = UITableViewAutomaticDimension
        
        commentAgreeTable.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = commentAgreeTable.dequeueReusableCellWithIdentifier("CommentCell", forIndexPath: indexPath) as! CommentAgreeCell
        
//        cell.commentContentLabel.text = "あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。"
//        cell.profileImageView.image = UIImage(named: "profile_image.jpg")
        
        return cell
    }
    
    func transitionToProfile() {
        self.performSegueWithIdentifier("toProfileView", sender: self)
    }

}
