//
//  Country.swift
//  money-of-the-world
//
//  Created by McL on 8/17/18.
//  Copyright © 2018 McL. All rights reserved.
//

import Foundation

struct Country
{
    private(set) public var name: String
    private(set) public var imageName: String
    
    init(
        name: String,
        imageName: String
    )
    {
        self.name = name
        self.imageName = imageName
    }
}
