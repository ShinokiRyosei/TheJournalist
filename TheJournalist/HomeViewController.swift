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
        
        topicTable.estimatedRowHeight = 240
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
            
            return cell
        }else {
            let cell = topicTable.dequeueReusableCellWithIdentifier("HomeDisagreeCell", forIndexPath: indexPath) as! HomeDisagreeCell
            
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
