//
//  CommentViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class BoardViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var commentTable: UITableView!
    
    @IBOutlet var boardTitleLabel: UILabel!
    
    @IBOutlet var tableBottomLayout: NSLayoutConstraint!
    
    let dammy: [[String: Int]] = [["board_position": 1], ["board_position": 2], ["board_position": 2], ["board_position": 1]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentTable.delegate = self
        commentTable.dataSource = self
        
        commentTable.registerNib(UINib(nibName: "BoardAgreeCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "BoardAgreeCell")
        commentTable.registerNib(UINib(nibName: "BoardDisagreeCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "BoardDisagreeCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        boardTitleLabel.text = "佐野研二郎氏のデザイン事務所、MR_DESIGNの危機管理能力は実際大変素晴らしいものであった"
        
        commentTable.estimatedRowHeight = 203
        commentTable.rowHeight = UITableViewAutomaticDimension
        
        commentTable.tableFooterView = UIView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectPostComment() {
        self.transition()
    }
    
    func transition() {
        let commentVC = CommentFormViewController()
        self.presentViewController(commentVC, animated: true, completion: nil)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return ["", ""]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dammy.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if dammy[indexPath.row]["board_position"] == 1{
            let cell = commentTable.dequeueReusableCellWithIdentifier("BoardAgreeCell", forIndexPath: indexPath) as! BoardAgreeCell
            
            return cell
        }else {
            let cell = commentTable.dequeueReusableCellWithIdentifier("BoardDisagreeCell", forIndexPath: indexPath) as! BoardDisagreeCell
            
            return cell
        }
    }
}
