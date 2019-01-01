//
//  ViewController.swift
//  Nest Egg
//
//  Created by Jimson Vedua on 12/28/18.
//  Copyright © 2018 SameTeam. All rights reserved.
//

import UIKit

extension UIViewController {
    func HideKeyboard() {
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        view.addGestureRecognizer(Tap)
    }
    
    @objc func DismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController {
    
    var startingBalance: Double = 0
    var monthlyContribution: Double = 0
    var yearOfRetirement: Double = 0
    var interestRate: Double = 0

    @IBOutlet weak var startingBalanceTF: UITextField!
    @IBOutlet weak var monthlyContributionTF: UITextField!
    @IBOutlet weak var yearOfRetirementTF: UITextField!
    @IBOutlet weak var interestRateTF: UITextField!
    @IBOutlet weak var nestEggAtRetirementTF: UITextField!
    
    @IBAction func calculateButton(_ sender: UIButton) {
        startingBalance = Double(self.startingBalanceTF.text!)!
        monthlyContribution = Double(self.monthlyContributionTF.text!)!
        yearOfRetirement = Double(self.yearOfRetirementTF.text!)!
        interestRate = Double(self.interestRateTF.text!)!
        
        print("starting balance is \(startingBalance)")
        print("monthly contribution is \(monthlyContribution)")
        print("year of retirement is \(yearOfRetirement)")
        print("interest rate is \(interestRate)")

        let currentYear: Double = 2018
        let yearsBeforeRetirement: Double =  yearOfRetirement - currentYear
        let nestEgg = balance(P: startingBalance, r: interestRate, c: monthlyContribution, Y: yearsBeforeRetirement)
        let stringNestEgg = String(format: "$  %.2f", nestEgg)

        nestEggAtRetirementTF.text = String(stringNestEgg)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.HideKeyboard()
    }
    
    func balance(P:Double, r:Double, c:Double, Y:Double) -> Double {
        var bal:Double
    
//        Total = [ P(1+r/n)^(nt) ] + [ PMT × (((1 + r/n)^(nt) - 1) / (r/n)) ]
        let n: Double = 12
        let rate: Double = r/100
        
        bal = (P * pow(1 + rate / n, n*Y)) + (c * (((pow(1 + rate/n, n*Y)) - 1) / (rate/n)))
        return bal
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

