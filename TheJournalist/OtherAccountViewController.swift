//
//  OtherAccountViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class OtherAccountViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var usernameLabel: UILabel!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var accountTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        accountTable.delegate = self
        accountTable.dataSource = self
        
        accountTable.registerNib(UINib(nibName: "OtherAccountSyncroCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "OtherAccountSyncroCell")
        accountTable.registerNib(UINib(nibName: "ProfileCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "ProfileCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        accountTable.estimatedRowHeight = 97
        accountTable.rowHeight = UITableViewAutomaticDimension
        
        accountTable.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = accountTable.dequeueReusableCellWithIdentifier("OtherAccountSyncroCell", forIndexPath: indexPath) as! OtherAccountSyncroCell
        
        cell.boardTitleLabel.text = "Googleが開発したAlphaGoが韓国イ・セドル五段に勝利"
        cell.myPositionLabel.text = "賛成"
        cell.otherPositionLabel.text = "賛成"
        cell.syncroImageView.image = UIImage(named: "other-account-syncro-02.png")
        
        return cell
    }
}
