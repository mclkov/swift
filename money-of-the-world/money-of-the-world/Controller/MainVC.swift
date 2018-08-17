//
//  ViewController.swift
//  money-of-the-world
//
//  Created by McL on 8/17/18.
//  Copyright © 2018 McL. All rights reserved.
//

import UIKit

class MainVC:
            UIViewController,
            UITableViewDelegate,
            UITableViewDataSource
{
    
    @IBOutlet weak var countriesTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countriesTable.dataSource = self
        countriesTable.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCountries().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell") as? CountryCell
        {
            let country = DataService.instance.getCountries()[indexPath.row]
            cell.updateViews(country: country)
            return cell
        }
        return CountryCell()
    }

}

