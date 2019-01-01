//
//  ViewController.swift
//  Nest Egg
//
//  Created by Jimson Vedua on 12/28/18.
//  Copyright © 2018 SameTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startingBalanceAmount: Int = 0
    var monthlyContributionAmount: Int = 0

    @IBOutlet weak var startingBalance: UITextField!
    @IBOutlet weak var monthlyContribution: UITextField!
    @IBOutlet weak var yearOfRetirement: UITextField!
    @IBOutlet weak var interestRate: UITextField!
    @IBOutlet weak var nestEggAtRetirement: UITextField!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        startingBalanceAmount = Int(self.startingBalance.text!)!
        monthlyContributionAmount = Int(self.monthlyContribution.text!)!
        let yearOfRetirement = Int(self.yearOfRetirement.text!)
        let interestRate = Int(self.interestRate.text!)
        print("starting balance is \(startingBalanceAmount)")
        print("monthly contribution is \(monthlyContributionAmount)")
        print("year of retirement is \(yearOfRetirement!)")
        print("interest rate is \(interestRate!)")
        
        let n = 12
        let currentYear = 2018
        let yearsDifference = yearOfRetirement! - currentYear
        print("year is \(currentYear)")
        var nestEgg = 0
        
        let nthPower = (n * yearsDifference)
        
        let intInterestRate = Int(self.interestRate.text!)
        let floatInterestRate = Float(intInterestRate!)
        
        let onePlusRdivByN = (1 + floatInterestRate/Float(n))
        
        nestEgg = startingBalanceAmount * (Int(onePlusRdivByN)<<(nthPower))
        
//        nestEgg = startingBalanceAmount + ((monthlyContributionAmount * 12) * (yearOfRetirement! - currentYear))
        nestEggAtRetirement.text? = String(nestEgg)
        print("nest egg = \(nestEggAtRetirement.text!)")
        
        
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
}

