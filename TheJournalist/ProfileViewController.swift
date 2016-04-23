//
//  ProfileViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var profileTable: UITableView!
    
    @IBOutlet var usernameLabel: UILabel!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var pointLabel: UILabel!
    
    @IBOutlet var clipLabel: UILabel!
    
    @IBOutlet var boardLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileTable.delegate = self
        profileTable.dataSource = self
        
        profileTable.registerNib(UINib(nibName: "ProfileCell", bundle: nil), forCellReuseIdentifier: "ProfileCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        profileTable.estimatedRowHeight = 96
        profileTable.rowHeight = UITableViewAutomaticDimension
        
        profileTable.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //後で消す
    func dammy() {
        usernameLabel.text = "小谷篤信"
        descriptionLabel.text = "清掃員 at The Journalist\nStudies Computer Science at ブラウン大学"
        pointLabel.text = "125"
        clipLabel.text = "512"
        boardLabel.text = "387"
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = profileTable.dequeueReusableCellWithIdentifier("ProfileCell", forIndexPath: indexPath) as! ProfileCell
        
        
        return cell
    }
}
