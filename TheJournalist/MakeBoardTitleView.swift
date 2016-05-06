//
//  MakeBoardTitleView.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/04/26.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class MakeBoardTitleView: UITextView, UITextViewDelegate {

    lazy var label = UILabel()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.delegate = self
    }
    
    override func drawRect(rect: CGRect) {
        setPlaceholder()
    }
    
    func setPlaceholder() {
        self.text = "主張を書く"
        self.textColor = Color.lightGrayColor
    }
    
    func textViewDidBeginEditing(textView: UITextView) {
        if textView.textColor == Color.lightGrayColor {
            self.text = ""
            self.textColor = Color.blueColor
            self.becomeFirstResponder()
        }
    }
    
    func textViewDidEndEditing(textView: UITextView) {
        if self.text.isEmpty {
            self.text = "主張を書く"
            self.textColor = Color.lightGrayColor
        }
    }
}
