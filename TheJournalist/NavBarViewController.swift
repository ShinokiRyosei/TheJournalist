//
//  NavBarViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/24.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class NavBarViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    @IBOutlet var navbarTable: UITableView!
    
    @IBOutlet var searchBar: UITextField!
    
    @IBOutlet var profileLabel: UILabel!
    
    let navbarTitleArray = ["ホーム", "通知", "履歴", "急上昇", "設定", "ヘルプ"]
    
    let navbarIconArray = [UIImage(named:"mobile-navbar-for-may1st-03.png"), UIImage(named: "mobile-navbar-for-may1st-04.png"), UIImage(named: "mobile-navbar-for-may1st-05.png"), UIImage(named: "mobile-navbar-for-may1st-06.png"), UIImage(named: "mobile-navbar-for-may1st-07.png"), UIImage(named: "mobile-navbar-for-may1st-08.png")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navbarTable.delegate = self
        navbarTable.dataSource = self
        
        searchBar.delegate = self
        
        navbarTable.scrollEnabled = false
        
        navbarTable.registerNib(UINib(nibName: "NavbarCell", bundle: nil), forCellReuseIdentifier: "NavbarCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return navbarTitleArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = navbarTable.dequeueReusableCellWithIdentifier("NavbarCell", forIndexPath: indexPath) as! NavbarCell
        
        cell.iconImageView.image = navbarIconArray[indexPath.row]
        cell.titleLabel.text = navbarTitleArray[indexPath.row]
        
        return cell
    }
}
