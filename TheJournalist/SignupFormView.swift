//
//  SignupFormView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/22.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class SignupFormView: UIView {
    
    @IBOutlet var firstnameTextField: UITextField!
    
    @IBOutlet var lastnameTextField: UITextField!
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    @IBOutlet var fbLoginButton: UIButton!
    
    
    @IBOutlet var twitterLoginButton: UIButton!
    
    class func instance() -> SignupFormView {
        return UINib(nibName: "SignupFormView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! SignupFormView
    }

    
    override func drawRect(rect: CGRect) {
        // Drawing code
    }

}
