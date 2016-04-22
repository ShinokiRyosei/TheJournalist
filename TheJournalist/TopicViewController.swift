//
//  TopicViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/23.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class TopicViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var topicTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicTable.registerNib(UINib(nibName: "TopicCell",bundle: nil), forCellReuseIdentifier: "TopicCell")
        
        topicTable.delegate = self
        topicTable.dataSource = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        topicTable.estimatedRowHeight = 120
        topicTable.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func transition() {
        self.performSegueWithIdentifier("toVoteView", sender: self)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = topicTable.dequeueReusableCellWithIdentifier("TopicCell", forIndexPath: indexPath) as! TopicCell
        
        return cell
    }
}
