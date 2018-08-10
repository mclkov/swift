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
    
    
    @IBOutlet weak var itemPriceText: CustomTextField!
    @IBOutlet weak var percentsText: CustomTextField!
    @IBOutlet weak var skipMonthSwitch: UISwitch!
    
    @IBOutlet weak var endPriceLabel: UILabel!
    @IBOutlet weak var endPriceStack: UIStackView!
    
    
    
    @IBOutlet weak var pickerMonths: UIPickerView!
    var pickedMonths: Int? = 2
    var pickerMonthsData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoPixelPerfect()
        setPickerMonths()
        resetCalculations()
        
        drawCalculateButton()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onSkipMonths(_ sender: Any) {
        showCalculations()
    }
    
    func drawCalculateButton()
    {
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)

        calcBtn.addTarget(self, action: #selector(MainVC.showCalculations), for: .touchUpInside)

        itemPriceText.inputAccessoryView = calcBtn
        percentsText.inputAccessoryView = calcBtn
    }
    
    func calculate () -> Double
    {
        var result: Double = 0
        if let itemPriceValue = itemPriceText.text,
            let percentsValue = percentsText.text,
            let monthValue = pickedMonths
        {
            
            if let price = Double(itemPriceValue),
                let percents = Int(percentsValue)
            {
                result = Price.getPrice(itemPrice: price, percents: percents, months: monthValue, freeFirstMonth: skipMonthSwitch.isOn)
            }
        }
        return result
    }
    
    @objc func showCalculations()
    {
        view.endEditing(true)
        
        endPriceLabel.text = "\(calculate())"
        endPriceStack.isHidden = false
    }
    
    func resetCalculations()
    {
       endPriceLabel.text = ""
       endPriceStack.isHidden = true
    }
    
    func setPickerMonths()
    {
        pickerMonthsData = ["Select months:", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11" ,"12"]
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0 {
            pickedMonths = 2
            pickerMonths.selectRow(1, inComponent: 0, animated: true)
        }else{
            pickedMonths = Int(pickerMonthsData[row])
        }
        showCalculations()
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

