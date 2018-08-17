//
//  DataService.swift
//  money-of-the-world
//
//  Created by McL on 8/17/18.
//  Copyright © 2018 McL. All rights reserved.
//

import Foundation

class DataService
{
    static let instance = DataService()
    private let countries = [
        Country(name: "United States of America", imageName: "usa.jpg"),
        Country(name: "European Union", imageName: "eu.jpg")
    ]
    
    func getCountries() -> [Country]
    {
        return countries
    }
}
