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
    
    private let usaCurrencies = [
        Currency(name: "1 Dollar", imageName: "usa_1.jpg"),
        Currency(name: "2 Dollars", imageName: "usa_2.jpg"),
        Currency(name: "5 Dollars", imageName: "usa_5.jpg"),
        Currency(name: "10 Dollars", imageName: "usa_10.jpg"),
        Currency(name: "20 Dollars", imageName: "usa_20.jpg"),
        Currency(name: "50 Dollars", imageName: "usa_50.jpg"),
        Currency(name: "100 Dollars", imageName: "usa_100.jpg"),
    ]
    
    private let euCurrencies = [
        Currency(name: "1 Euro", imageName: "eu_1.jpg"),
        Currency(name: "2 Euros", imageName: "eu_2.jpg"),
        Currency(name: "5 Euros", imageName: "eu_5.png"),
        Currency(name: "10 Euros", imageName: "eu_10.png"),
        Currency(name: "20 Euros", imageName: "eu_20.png"),
        Currency(name: "50 Euros", imageName: "eu_50.png"),
        Currency(name: "200 Euros", imageName: "eu_200.jpg"),
        Currency(name: "500 Euros", imageName: "eu_500.jpg"),
    ]
    
    func getCurrencies(forCountryName country: String) -> [Currency]
    {
        switch country
        {
            case "usa":
                return usaCurrencies
            case "eu":
                return euCurrencies
            default:
                return usaCurrencies
        }
    }
    
    func getCountries() -> [Country]
    {
        return countries
    }
}
