//
//  HomeViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class HomeViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    var topics: [[String: String?]] = []
    var data = JSON([])
    
    @IBOutlet var topicTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topicTable.delegate = self
        topicTable.dataSource = self
        
        topicTable.registerNib(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        topicTable.estimatedRowHeight = 240
        topicTable.rowHeight = UITableViewAutomaticDimension
        
        topicTable.tableFooterView = UIView()
        
        getTopics()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getTopics(){
        Alamofire.request(.GET, "http://demo.thejournalist.jp/api/topics/?format=json")
            .responseJSON { response in
                guard let object = response.result.value else {
                    return
                }
                self.data  = JSON(object)
                self.topicTable.reloadData()
        }
        
    }
    
    func image(url: String) -> UIImage{
        do{
            let imageData :NSData = try NSData(contentsOfURL: NSURL(string: url)!,options: NSDataReadingOptions.DataReadingMappedIfSafe);
            return UIImage(data:imageData)!;
        }catch{
            return UIImage(named: "")!
        }
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = topicTable.dequeueReusableCellWithIdentifier("HomeCell", forIndexPath: indexPath) as! HomeCell
        
        cell.topicTitleLabel.text = data[indexPath.row]["title"].string
        cell.descriptionLabel.text = data[indexPath.row]["detail"].string
        cell.topicImageView.image = image(data[indexPath.row]["image"].string!)
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.transitionToTopicView()
    }
    
    func transitionToTopicView() {
        self.performSegueWithIdentifier("toTopicView", sender: self)
    }
    
}
