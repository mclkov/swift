//
//  ViewController.swift
//  creditAdvisor
//
//  Created by McL on 8/9/18.
//  Copyright © 2018 McL. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var logoLabelA: UILabel!
    @IBOutlet weak var logoLabelB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoLabelA.frame = CGRect(x: view.frame.size.width / 2 - logoLabelA.frame.size.width, y: 40, width: logoLabelA.frame.size.width, height: logoLabelA.frame.size.height)
        logoLabelB.frame = CGRect(x: view.frame.size.width / 2, y: 55, width: logoLabelB.frame.size.width, height: logoLabelB.frame.size.height)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

