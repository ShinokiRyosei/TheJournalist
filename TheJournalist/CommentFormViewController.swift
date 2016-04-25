//
//  CommentFormViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/24.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class CommentFormViewController: UIViewController {
    
    @IBOutlet var textNumberLabel: UILabel!
    
    @IBOutlet var commentTextView: UITextView!

    @IBOutlet var leftDismissButton: CommentFormDismissButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        commentTextView.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        commentTextView.resignFirstResponder()
    }
    
    @IBAction func leftDismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
