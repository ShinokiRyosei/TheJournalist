//
//  MakeBoardDescriptionView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/26.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class MakeBoardDescriptionView: UITextView, UITextViewDelegate {

    lazy var label = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.delegate = self
    }
    
    override func drawRect(rect: CGRect) {
        self.setPlaceholder()
    }
    
    func setPlaceholder() {
        self.text = "理由 / 背景"
        self.textColor = Color.lightGrayColor
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        if self.textColor == Color.lightGrayColor {
            self.text = ""
            self.textColor = UIColor.blackColor()
            self.becomeFirstResponder()
        }
    }
    
    func textViewDidEndEditing(textView: UITextView) {
        if self.text.isEmpty {
            self.text = "理由 / 背景"
            self.textColor = Color.lightGrayColor
        }
    }
    
}
