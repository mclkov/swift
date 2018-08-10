//
//  MoneyLabelForStack.swift
//  creditAdvisor
//
//  Created by McL on 8/10/18.
//  Copyright © 2018 McL. All rights reserved.
//

import UIKit

@IBDesignable
class MoneyLabelForStack: UIStackView {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 40
        let middleLine: CGFloat = -9
        let currencyLabel = UILabel(
            frame:
            CGRect(
                x: -50,
                y: ((frame.size.height / 2) - size / 2) + middleLine,
                width: size,
                height: size
            )
        )
        currencyLabel.font = UIFont(name: "Copperplate-Bold", size: 40)
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.8523602553)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        
        currencyLabel.clipsToBounds = true
        
        addSubview(currencyLabel)
    }

}
