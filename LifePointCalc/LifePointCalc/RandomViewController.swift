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
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var Sides = 6 // Sides of dice
    var dcNum = 1 // Number of Coins/Dice
    var results = [Int]()
    
    @IBOutlet weak var TestLabel: UILabel!
    
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
        TestLabel.text = String(results[0] + 1)
        
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
