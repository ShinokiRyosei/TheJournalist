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
    
    @IBOutlet var profileImageView: ProfileImageView!
    
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
        
        self.dammy()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //後で消す
    func dammy() {
        profileImageView.image = UIImage(named: "profile_image.jpg")
        usernameLabel.text = "小谷篤信"
        descriptionLabel.text = "清掃員 at The Journalist\nStudies Computer Science at ブラウン大学"
        pointLabel.text = "125"
        clipLabel.text = "512"
        boardLabel.text = "387"
    }
    
    func transition() {
        self.performSegueWithIdentifier("toHomeView", sender: self)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = profileTable.dequeueReusableCellWithIdentifier("ProfileCell", forIndexPath: indexPath) as! ProfileCell
        
        cell.titleLabel.text = "佐野研二郎氏のデザイン事務所、MR_DESIGNの危機管理能力は実際大変素晴らしいものであった"
        cell.contentLabel.text = "あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。またそのなかでいっしょになったたくさんのひとたち、ファゼーロとロザーロ、羊飼のミーロや、顔の赤いこどもたち、地主のテーモ、山猫博士のボーガント"
        cell.categoryLabel.text = "甲斐さんがコメント"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.transition()
    }
}
