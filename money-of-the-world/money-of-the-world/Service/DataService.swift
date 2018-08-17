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
        Country(shortName: "usa", name: "United States of America", imageName: "usa.jpg"),
        Country(shortName: "eu", name: "European Union", imageName: "eu.jpg")
    ]
    
    private let currencies = [Currency]()
    
    private let usaCurrencies = [
        Currency(name: "1 Dollar", imageName: "usa_1.jpg"),
        Currency(name: "2 Dollars", imageName: "usa_2.jpg"),
        Currency(name: "5 Dollars", imageName: "usa_5.jpg")
    ]
    
    private let euCurrencies = [
        Currency(name: "1 Euro", imageName: "eu_1.jpg"),
        Currency(name: "2 Euros", imageName: "eu_2.jpg"),
        Currency(name: "5 Euros", imageName: "eu_5.png")
    ]
    
    func getCountries() -> [Country]
    {
        return countries
    }
}
