//
//  StringExtension.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/02.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

extension String {
    
    func cut(numberOfLetters length: Int, fromLocation location: Int) -> String {
        guard let str:String = self else { return "" }
        let text = (str as NSString).substringWithRange(NSRange(location: location, length: length)) + "..."
        return text
    }
}
