//
//  Price.swift
//  creditAdvisor
//
//  Created by McL on 8/9/18.
//  Copyright © 2018 McL. All rights reserved.
//

import Foundation
class Price
{
    class func getPrice (
        itemPrice: Double,
        percents: Int,
        months: Int,
        freeFirstMonth: Bool
        ) -> Double
    {
//        assert((percents < 0 || percents > 100), "percents are [0.x;100]")
        if percents < 0 || percents > 100 {
            print("percents are [0.x;100]")
        }
        
        let amountOneMonth: Double = itemPrice * (Double(percents) / 100)
        var result: Double = amountOneMonth * Double(months) + itemPrice
        
        if freeFirstMonth == true {
            result -= amountOneMonth
        }
        
        return LanguageExtension.round(result, 2)
    }
}
