//
//  GlobalVariable.swift
//  TheJournalist
//
//  Created by ShinokiRyosei on 2016/05/05.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

public class Color {
    //赤色
    static let redColor = UIColor(colorLiteralRed: 195/255, green: 13/255, blue: 35/255, alpha: 1)
    
    static let blueColor = UIColor(colorLiteralRed: 23/255, green: 28/255, blue: 97/255, alpha: 1)
    
    static let grayColor = UIColor(colorLiteralRed: 89/255, green: 87/255, blue: 87/255, alpha: 1)
    
    static let lightGrayColor = UIColor(colorLiteralRed: 180/255, green: 179/255, blue: 179/255, alpha: 1)
    
    static let lightGrayCGColor = Color.lightGrayColor.CGColor
    
    static func grayCGColor() -> CGColor {
        return Color.lightGrayColor.CGColor
    }
    
    class func lightGrayCG() -> CGColor {
        return Color.lightGrayColor.CGColor
    }
}
