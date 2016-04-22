//
//  LoginViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/22.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var containerView: UIView!
    
    var loginNib: LoginFormView!
    
    var signupNib: SignupFormView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginNib = UINib(nibName: "LoginFormView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! LoginFormView
        loginNib.translatesAutoresizingMaskIntoConstraints = false
        signupNib = UINib(nibName: "SignupFormView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! SignupFormView
        signupNib.translatesAutoresizingMaskIntoConstraints = false
        addSubviewWithAutoLayout(loginNib, parentView: containerView)
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didSelectLogin() {
        addSubviewWithAutoLayout(loginNib, parentView: containerView)
    }
    
    @IBAction func didSelectSignup() {
        addSubviewWithAutoLayout(signupNib, parentView: containerView)
    }
    
    private func addSubviewWithAutoLayout(childView: UIView, parentView: UIView) {
        parentView.addSubview(childView)
        parentView.addConstraint(NSLayoutConstraint(item: childView, attribute: .Top, relatedBy: .Equal, toItem: parentView, attribute: .Top, multiplier: 1.0, constant: 0))
        
        parentView.addConstraint(NSLayoutConstraint(item: childView, attribute: .Right, relatedBy: .Equal, toItem: parentView, attribute: .Right, multiplier: 1.0, constant: 0))
        
        parentView.addConstraint(NSLayoutConstraint(item: childView, attribute: .Bottom, relatedBy: .Equal, toItem: parentView, attribute: .Bottom, multiplier: 1.0, constant: 0))
     
        parentView.addConstraint(NSLayoutConstraint(item: childView, attribute: .Left, relatedBy: .Equal, toItem: parentView, attribute: .Left, multiplier: 1.0, constant: 0))
    }
}
