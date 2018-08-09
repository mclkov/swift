//
//  LanguageExtension.swift
//  creditAdvisor
//
//  Created by McL on 8/9/18.
//  Copyright © 2018 McL. All rights reserved.
//

import UIKit

class LanguageExtension
{
    class func rgba (
        r: Double,
        g: Double,
        b: Double,
        a: CGFloat = 1
        ) -> UIColor
    {
        let red:CGFloat = CGFloat(r/255.0)
        let green:CGFloat = CGFloat(g/255.0)
        let blue:CGFloat = CGFloat(b/255.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: a)
    }
    
    class func round (
        _ digit: Double,
        _ decimalPlaces: Double
        ) -> Double
    {
        let places: Double = pow(10, decimalPlaces)
        return Double(ceil(places * digit) / places)
    }
}
