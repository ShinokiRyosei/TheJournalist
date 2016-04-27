//
//  MakeBoardViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/23.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class MakeBoardViewController: UIViewController {

    @IBOutlet var makeBoardTextView: UITextView!
    
    @IBOutlet var boardDescriptionTextView: UITextView!
    
    @IBOutlet var agreeButton: UIButton!
    
    @IBOutlet var disagreeButton: UIButton!
    
    @IBOutlet var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        agreeButton.selectAgree()
        navBar.updateLayout()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didSelectAgree() {
        agreeButton.selectAgree()
        disagreeButton.unselectAgree()
    }
    
    @IBAction func didSelectDisagree() {
        agreeButton.unselectAgree()
        disagreeButton.selectDisagree()
    }
    
    func didSelectPost() {
        
    }
    
    func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        
        return true
    }
}
