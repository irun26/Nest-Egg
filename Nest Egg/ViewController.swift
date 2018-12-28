//
//  ViewController.swift
//  Nest Egg
//
//  Created by Jimson Vedua on 12/28/18.
//  Copyright © 2018 SameTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startingBalance: UITextField!
    @IBOutlet weak var monthlyContribution: UITextField!
    @IBOutlet weak var yearOfRetirement: UITextField!
    @IBOutlet weak var interestRate: UITextField!
    @IBOutlet weak var nestEggAtRetirement: UITextField!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let startingBalance = Int(self.startingBalance.text!)
        print("starting balance is \(startingBalance! * 2)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    
    

}

