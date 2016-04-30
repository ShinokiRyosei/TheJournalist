//
//  ProfileEditViewController.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/30.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ProfileEditViewController: NavigationViewController, UITextFieldDelegate {
    
    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var teamTextField: UITextField!
    
    @IBOutlet var positionTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        teamTextField.delegate = self
        positionTextField.delegate = self
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        teamTextField.resignFirstResponder()
        positionTextField.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
