//
//  ViewController.swift
//  creditAdvisor
//
//  Created by McL on 8/9/18.
//  Copyright © 2018 McL. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var logoLabelA: UILabel!
    @IBOutlet weak var logoLabelB: UILabel!
    
    @IBOutlet weak var pickerMonths: UIPickerView!
//    var pickerMonthsData: [Int] = [Int]()
    var pickerMonthsData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoPixelPerfect()
        setPickerMonths()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setPickerMonths()
    {
//        pickerMonthsData = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ,12]
        pickerMonthsData = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11" ,"12"]
        // Connect data:
        self.pickerMonths.delegate = self
        self.pickerMonths.dataSource = self
        
    }

    func logoPixelPerfect()
    {
        logoLabelA.frame = CGRect(x: view.frame.size.width / 2 - logoLabelA.frame.size.width, y: 40, width: logoLabelA.frame.size.width, height: logoLabelA.frame.size.height)
        logoLabelB.frame = CGRect(x: view.frame.size.width / 2, y: 55, width: logoLabelB.frame.size.width, height: logoLabelB.frame.size.height)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerMonthsData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: pickerMonthsData[row], attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
    }
}

