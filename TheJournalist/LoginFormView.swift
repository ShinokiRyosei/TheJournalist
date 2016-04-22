//
//  LoginFormView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/22.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class LoginFormView: UIView {
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    @IBOutlet var fbLoginButton: UIButton!
    
    @IBOutlet var twitterLoginButton: UIButton!

    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        // Drawing code
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func addIcon() {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "mailIcon.png")
        imageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        emailTextField.addSubview(imageView)
        let leftView = UIView.init(frame: CGRectMake(0, 0, 30, 21))
        emailTextField.leftView = leftView
        emailTextField.leftViewMode = UITextFieldViewMode.Always
        
        let imageView2 = UIImageView()
        imageView2.image = UIImage(named: "passwordIcon.png")
        
        
    }
}
