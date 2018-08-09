//
//  CustomTextField.swift
//  creditAdvisor
//
//  Created by McL on 8/9/18.
//  Copyright © 2018 McL. All rights reserved.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    override func awakeFromNib()
    {
        super.awakeFromNib()
        customizeView()
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    func customizeView ()
    {
        backgroundColor = LanguageExtension.rgba(r: 255, g: 255, b: 255, a: 0.25)
        textColor = LanguageExtension.rgba(r: 255, g: 255, b: 255)
    }

}
