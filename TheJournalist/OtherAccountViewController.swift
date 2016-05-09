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
    
    @IBOutlet var tableButtons: [UIButton]!
    
    //どのTableViewを表示するか 0=Clip 1=Syncro
    var selectedTable = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        accountTable.delegate = self
        accountTable.dataSource = self
        
        accountTable.registerNib(UINib(nibName: "OtherAccountSyncroCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "OtherAccountSyncroCell")
        accountTable.registerNib(UINib(nibName: "ProfileClipCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "ProfileClipCell")
        accountTable.registerNib(UINib(nibName: "OtherAccountPointCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "OtherAccountPointCell")
        
        selectTableContent(selectedTable: 0)
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
    
    @IBAction func didSelectClip() {
        selectTableContent(selectedTable: 0)
    }
    
    @IBAction func didSelectSyncro() {
        selectTableContent(selectedTable: 1)
    }
    
    @IBAction func didSelectPoint() {
        selectTableContent(selectedTable: 2)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if selectedTable == 0 {
            let cell = accountTable.dequeueReusableCellWithIdentifier("ProfileClipCell", forIndexPath: indexPath) as! ProfileClipCell
            
            return cell
        }else if selectedTable == 1{
            let cell = accountTable.dequeueReusableCellWithIdentifier("OtherAccountSyncroCell", forIndexPath: indexPath) as! OtherAccountSyncroCell
            
            cell.boardTitleLabel.text = "Googleが開発したAlphaGoが韓国イ・セドル五段に勝利"
            cell.myPositionLabel.text = "賛成"
            cell.otherPositionLabel.text = "賛成"
            cell.syncroImageView.image = UIImage(named: "other-account-syncro-02.png")
            
            return cell
        }else {
            let cell = accountTable.dequeueReusableCellWithIdentifier("OtherAccountPointCell", forIndexPath: indexPath) as! OtherAccountPointCell
            
            return cell
        }
        
    }
    
    private func selectTableContent(selectedTable table: Int) {
        for button in tableButtons {
            button.setTitleColor(Color.lightGrayColor, forState: .Normal)
        }
        tableButtons[table].setTitleColor(Color.blueColor, forState: .Normal)
        selectedTable = table
        accountTable.reloadData()
    }
}
