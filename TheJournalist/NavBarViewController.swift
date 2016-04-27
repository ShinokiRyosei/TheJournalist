//
//  NavBarViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/24.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit
import SWRevealViewController

class NavBarViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var navbatTable: UITableView!
    
    @IBOutlet var searchBar: UITextField!
    
    @IBOutlet var profileLabel: UILabel!
    
    @IBOutlet var profileImageView: UIImageView!
    
    let navbarItems = ["ホーム", "通知", "履歴", "設定", "ヘルプ"]
    
    let navbarImages = [UIImage(named: "mobile-navbar-for-may1st-03.png"), UIImage(named: "mobile-navbar-for-may1st-04.png"), UIImage(named: "mobile-navbar-for-may1st-05.png"), UIImage(named: "mobile-navbar-for-may1st-07.png"), UIImage(named: "mobile-navbar-for-may1st-08.png")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navbatTable.delegate = self
        navbatTable.dataSource = self
        
        navbatTable.registerNib(UINib(nibName: "NavbarCell", bundle: nil), forCellReuseIdentifier: "NavbarCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navbatTable.tableFooterView = UIView()
        
        profileLabel.addGestureRecognizer(createGestureRecognizer())
        
    }
    
    private func createGestureRecognizer() -> UITapGestureRecognizer  {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.transitionToProfile))
        return gesture
        
    }
    
    func transitionToProfile() {
        print("transitionToProfile")
    }
    
    func  transition() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let notificationView = storyboard.instantiateViewControllerWithIdentifier("notificationView")
        
        let navController = UINavigationController(rootViewController: notificationView)
        navController.setViewControllers([notificationView], animated: true)
        
        self.revealViewController().setFrontViewController(navController, animated: true)
        self.revealViewController().setFrontViewPosition(FrontViewPosition.Left, animated: true)
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        transition()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return navbarItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = navbatTable.dequeueReusableCellWithIdentifier("NavbarCell", forIndexPath: indexPath) as! NavbarCell
        
        cell.titleLabel.text = navbarItems[indexPath.row]
        cell.iconImageView.image = navbarImages[indexPath.row]
        
        return cell
    }
}
