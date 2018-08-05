//
//  MenuBorderButton.swift
//  designStudioApp
//
//  Created by McL on 8/5/18.
//  Copyright © 2018 McL. All rights reserved.
//

import UIKit

class MenuBorderButton: UIButton {
    override func awakeFromNib()
    {
        super.awakeFromNib()
        layer.borderWidth = 1
        layer.borderColor = UIColor.init(red: 255, green: 255, blue: 255, alpha: 255).cgColor
    }
}
