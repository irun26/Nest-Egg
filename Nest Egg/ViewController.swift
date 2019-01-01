//
//  ViewController.swift
//  Nest Egg
//
//  Created by Jimson Vedua on 12/28/18.
//  Copyright © 2018 SameTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startingBalanceAmount: Double = 0
    var monthlyContributionAmount: Double = 0
    var yearOfRetirement: Double = 0
    var interestRate: Double = 0
    

    @IBOutlet weak var startingBalanceTF: UITextField!
    @IBOutlet weak var monthlyContributionTF: UITextField!
    @IBOutlet weak var yearOfRetirementTF: UITextField!
    @IBOutlet weak var interestRateTF: UITextField!
    @IBOutlet weak var nestEggAtRetirementTF: UITextField!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        startingBalanceAmount = Double(self.startingBalanceTF.text!)!
        monthlyContributionAmount = Double(self.monthlyContributionTF.text!)!
        yearOfRetirement = Double(self.yearOfRetirementTF.text!)!
        interestRate = Double(self.interestRateTF.text!)!
        
        print("starting balance is \(startingBalanceAmount)")
        print("monthly contribution is \(monthlyContributionAmount)")
        print("year of retirement is \(yearOfRetirement)")
        print("interest rate is \(interestRate)")
        
        
        
        
        nestEggAtRetirementTF.text = String(balance(P: startingBalanceAmount, r: interestRate, c: monthlyContributionAmount, Y: yearOfRetirement))
        
        print("float nest egg = \(nestEggAtRetirementTF.text)")
        
        
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    func balance(P:Double, r:Double, c:Double, Y:Double) -> Double {
        var bal:Double
        bal = pow(P*(1+r),Y) + c * (pow(1+r, Y+1) - (1 + r))/r
        return bal
    }
    
    
}

