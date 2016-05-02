//
//  TopicViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/23.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

//ホームから遷移してTopicに応じたBoardを表示します
class TopicViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var topicImageView: UIImageView!
    
    @IBOutlet var titleLabel: UILabel!
    
    @IBOutlet var contentLabel: UILabel!
    
    @IBOutlet var topicTable: UITableView!
    
    var comment: String = ""
    var boards =  JSON([])
    var id: Int!
    var topic_title: String!
    var detail: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicTable.registerNib(UINib(nibName: "TopicCell",bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "TopicCell")
        topicTable.registerNib(UINib(nibName: "MakeBoardCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "MakeBoardCell")
        
        topicTable.delegate = self
        topicTable.dataSource = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        titleLabel.text = self.topic_title
//        contentLabel.text = self.detail
        topicTable.estimatedRowHeight = 120
        topicTable.rowHeight = UITableViewAutomaticDimension
        
        topicTable.tableFooterView = UIView()
        
        getBoards()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getBoards(){
        print(id)
        let url = "http://demo.thejournalist.jp/api/boards/?format=json&topic=\(id)"
        Alamofire.request(.GET, url)
            .responseJSON { response in
                guard let object = response.result.value else {
                    return
                }
                self.boards  = JSON(object)
                print(self.boards)
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
    
    func transition() {
        self.performSegueWithIdentifier("toVoteView", sender: self)
    }
    
    func transitionToMakeBoard() {
        self.performSegueWithIdentifier("toMakeBoard", sender: self)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boards.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.transition()
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row < 3 {
            let cell = topicTable.dequeueReusableCellWithIdentifier("TopicCell", forIndexPath: indexPath) as! TopicCell
            
            cell.voteNumberLabel.text = "23"
            cell.commentLabel.text = boards[indexPath.row]["title"].string
            
            return cell
        }else {
            let cell = topicTable.dequeueReusableCellWithIdentifier("MakeBoardCell", forIndexPath: indexPath) as! MakeBoardCell
            
            return cell
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toVoteView" {
            let voteVC = segue.destinationViewController as! VoteViewController
            voteVC.content = "佐野研二郎氏のデザイン事務所、MR_DESIGNの危機管理能力は実際大変すばらしいものであった"
            
        }
    }
}
