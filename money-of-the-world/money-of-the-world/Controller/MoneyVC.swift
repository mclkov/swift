//
//  MoneyVC.swift
//  money-of-the-world
//
//  Created by McL on 8/17/18.
//  Copyright © 2018 McL. All rights reserved.
//

import UIKit

class MoneyVC:
            UIViewController,
            UICollectionViewDelegate,
            UICollectionViewDataSource
{
    private let minimumSpacing: CGFloat = 0.0
    private(set) public var currencies = [Currency]()
    
    @IBOutlet weak var currencyCollection: UICollectionView!
    
    func initCurrenciesData(country: Country)
    {
        navigationItem.title = country.name
        self.currencies = DataService.instance.getCurrencies(forCountryName: country.shortName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.currencyCollection.delegate = self
        self.currencyCollection.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return currencies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CurrencyCell", for: indexPath) as? CurrencyCell
        {
            let currency = currencies[indexPath.row]
            cell.updateViews(currency: currency)
            return cell
        }
        return CurrencyCell()
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
        ) -> CGFloat
    {
        return minimumSpacing
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
