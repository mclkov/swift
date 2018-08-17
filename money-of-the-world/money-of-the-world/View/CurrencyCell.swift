//
//  CurrencyCell.swift
//  money-of-the-world
//
//  Created by McL on 8/17/18.
//  Copyright © 2018 McL. All rights reserved.
//

import UIKit

class CurrencyCell: UICollectionViewCell
{
    @IBOutlet weak var currencyName: UILabel!
    @IBOutlet weak var currencyImage: UIImageView!
    
    func updateViews(currency: Currency)
    {
        currencyName.text = currency.name
        currencyImage.image = UIImage(named: currency.imageName)
    }
}
