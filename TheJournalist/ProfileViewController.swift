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
    
    //どのTableViewを表示するか　0=ポイント、1=クリップ、2=投票ボード
    var selectedBoard = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileTable.delegate = self
        profileTable.dataSource = self
        
        profileTable.registerNib(UINib(nibName: "ProfileBoardCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "ProfileBoardCell")
        profileTable.registerNib(UINib(nibName: "ProfileClipCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "ProfileClipCell")
        profileTable.registerNib(UINib(nibName: "ProfilePointCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "ProfilePointCell")
        
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
    
    @IBAction func didSelectPoint() {
        
    }
    
    @IBAction func didSelectClip() {
        
    }
    
    @IBAction func didSelectBoard() {
        
    }
    
    //後で消す
    func dammy() {
        profileImageView.image = UIImage(named: "profile_image.jpg")
        usernameLabel.text = "小谷篤信"
        descriptionLabel.text = "清掃員 at The Journalist\nStudies Computer Science at ブラウン大学"
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if selectedBoard == 0 {
            let cell = profileTable.dequeueReusableCellWithIdentifier("ProfilePointCell", forIndexPath: indexPath) as! ProfilePointCell
            
            return cell
        }else if selectedBoard == 1 {
            let cell = profileTable.dequeueReusableCellWithIdentifier("ProfileClipCell", forIndexPath: indexPath) as! ProfileClipCell
            
            return cell
        }else {
            let cell = profileTable.dequeueReusableCellWithIdentifier("ProfileBoardCell", forIndexPath: indexPath) as! ProfileBoardCell
            
            return cell
        }
    }
    
    private func selectTableContent() {
        
    }
}
