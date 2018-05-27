//
//  RandomViewController.swift
//  LifePointCalc
//
//  Created by Nicholas Pilkington and Nicholas Wood on 22/5/18.
//  Copyright © 2018 Deakin. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if ViewController.diceOrCoin == 0{
            TestLabel.text = "DICE"
            noOfSidesOnDiceLabel.text = "Sides on dice = 6"
            Sides = 6
            noOfDiceCoinsLabel.text = "Number of Dice"
        }
        else
        {
            TestLabel.text = "COIN"
            noOfSidesOnDiceLabel.isHidden = true
            sidesOnDicePlus.isHidden = true
            sidesOnDiceMinus.isHidden = true
            sidesOnDiceMinus.isEnabled = false
            sidesOnDicePlus.isEnabled = false
            noOfDiceCoinsLabel.text = "Number of Coins"
            Sides = 2
        }
        TestLabel2.isHidden = true
        TestLabel3.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var Sides = 6 // Sides of dice
    var dcNum = 1 // Number of Coins/Dice
    var results = [Int]() // Array of roll/flip results filled by the Random function
    
    @IBOutlet weak var TestLabel: UILabel!
    
    @IBOutlet weak var TestLabel2: UILabel!
    
    @IBOutlet weak var TestLabel3: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var noOfSidesOnDiceLabel: UILabel!
    
    @IBOutlet weak var sidesOnDicePlus: UIButton!
    
    @IBOutlet weak var sidesOnDiceMinus: UIButton!
    
    @IBOutlet weak var noOfDiceCoinsLabel: UILabel!
    
    @IBOutlet weak var noOfDiceCoinsPlus: UIButton!
    
    @IBOutlet weak var noOfDiceCoinsMinus: UIButton!
    
  
    @IBOutlet weak var TestButton: UIButton!
    
    
    @IBAction func TestButtonPress(_ sender: Any) {
        results = Random(dcNum, Sides)
        
        
        
        if dcNum == 1
        {
            TestLabel.text = String(results[0] + 1)
        }
        else if dcNum == 2
        {
            TestLabel.text = String(results[0] + 1)
            TestLabel2.text = String(results[1] + 1)
            
        }
        else
        {
            TestLabel.text = String(results[0] + 1)
            TestLabel2.text = String(results[1] + 1)
            TestLabel3.text = String(results[2] + 1)
        }
        
    }
    
    @IBAction func backButtonPress(_ sender: Any) {
        performSegue(withIdentifier: "toMainFromRandom", sender: nil)
    }
    
    @IBAction func sidesPlus(_ sender: Any) {
        if Sides < 6
        {
        Sides = Sides + 1
        noOfSidesOnDiceLabel.text = "Sides on dice = " + String(Sides)
        }
    }
    
    @IBAction func sidesMinus(_ sender: Any) {
        if Sides > 2
        {
        Sides = Sides - 1
        noOfSidesOnDiceLabel.text = "Sides on dice = " + String(Sides)
        }
    }
    
    @IBAction func noOfDCPlus(_ sender: Any) {
        if dcNum < 3
        {
            dcNum = dcNum + 1
        }
        if dcNum == 1
        {
            TestLabel2.isHidden = true
            TestLabel3.isHidden = true
        }
        else if dcNum == 2
        {
            TestLabel2.isHidden = false
            TestLabel3.isHidden = true
        }
        else
        {
            TestLabel2.isHidden = false
            TestLabel3.isHidden = false
        }
    }
    
    @IBAction func noOfDCMinus(_ sender: Any) {
        if dcNum > 1
        {
            dcNum = dcNum - 1
        }
        if dcNum == 1
        {
            TestLabel2.isHidden = true
            TestLabel3.isHidden = true
        }
        else if dcNum == 2
        {
            TestLabel2.isHidden = false
            TestLabel3.isHidden = true
        }
        else
        {
            TestLabel2.isHidden = false
            TestLabel3.isHidden = false
        }
    }
    
   
    
    func Random(_ a: Int, _ b: Int) -> [Int] {
        let num = a
        let sides = b
        var result = [Int]()
        for _ in 1...num {
            result.append(Int(arc4random_uniform(UInt32(sides))))
        }
        return result
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
