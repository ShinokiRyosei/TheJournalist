//
//  CommentViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/19.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class BoardViewController: NavigationViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var commentTable: UITableView!
    
    @IBOutlet var boardTitleLabel: UILabel!
    
    @IBOutlet var tableBottomLayout: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentTable.delegate = self
        commentTable.dataSource = self
        
        commentTable.registerNib(UINib(nibName: "BoardCell", bundle: nil), forCellReuseIdentifier: "BoardCell")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        boardTitleLabel.text = "佐野研二郎氏のデザイン事務所、MR_DESIGNの危機管理能力は実際大変素晴らしいものであった"
        
        commentTable.estimatedRowHeight = 203
        commentTable.rowHeight = UITableViewAutomaticDimension
        
        commentTable.tableFooterView = UIView()
        
        addRevoteView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectPostComment() {
        self.transition()
    }
    
    func transition() {
        let commentVC = CommentFormViewController()
        self.presentViewController(commentVC, animated: true, completion: nil)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = commentTable.dequeueReusableCellWithIdentifier("BoardCell", forIndexPath: indexPath) as! BoardCell
        
        cell.contentLabel.text = "SNSという業界に沿って言えば答えは自ずと賛成になる。圧倒的な資本と世界トップクラスの人材を抱えているフェイスブックに対抗する術はない。フェイスブックがすでに獲得した何億人というユーザーの関係性を示すグラフはとてつもない価値を持っており、追随は難しい。"
        cell.agreeBar.backgroundColor = Color.blueColor
        cell.profileImageView.image = UIImage(named: "profile_image.jpg")
        
        return cell
    }
    
    private func addRevoteView() {
        let revoteView = UINib(nibName: "RevoteView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! RevoteView
        revoteView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(revoteView)
        self.view.addConstraint(NSLayoutConstraint(item: revoteView, attribute: .Bottom, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: revoteView, attribute: .Left, relatedBy: .Equal, toItem: self.view, attribute: .Left, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: revoteView, attribute: .Right, relatedBy: .Equal, toItem: self.view, attribute: .Right, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: revoteView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .Height, multiplier: 1, constant: 112))
        tableBottomLayout.active = false
        self.view.addConstraint(NSLayoutConstraint(item: revoteView, attribute: .Top, relatedBy: .Equal, toItem: commentTable, attribute: .Bottom, multiplier: 1, constant: 0))
        
    }
}
