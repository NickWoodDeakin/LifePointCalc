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
        randomBackground.image = settingsViewController.backgrounds[settingsViewController.Background]
        
        if ViewController.diceOrCoin == 0{
            DCImage1.image = dice[0]
            DCImage2.image = dice[0]
            DCImage3.image = dice[0]
            noOfSidesOnDiceLabel.text = "Sides on dice = 6"
            Sides = 6
            noOfDiceCoinsLabel.text = "Number of Dice"
        }
        else
        {
            DCImage1.image = coin[0]
            DCImage2.image = coin[0]
            DCImage3.image = coin[0]
            noOfSidesOnDiceLabel.isHidden = true
            sidesOnDicePlus.isHidden = true
            sidesOnDiceMinus.isHidden = true
            sidesOnDiceMinus.isEnabled = false
            sidesOnDicePlus.isEnabled = false
            noOfDiceCoinsLabel.text = "Number of Coins"
            Sides = 2
        }
            DCImage2.isHidden = true
            DCImage3.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var Sides = 6 // Sides of dice
    var dcNum = 1 // Number of Coins/Dice

    var results = [Int]() // Array of roll/flip results filled by the Random function
    let dice: [UIImage] = [
        UIImage(named: "1.png")!,
        UIImage(named: "2.png")!,
        UIImage(named: "3.png")!,
        UIImage(named: "4.png")!,
        UIImage(named: "5.png")!,
        UIImage(named: "6.png")!,
    ]

    let coin: [UIImage] = [
        UIImage(named: "coinHeads.png")!,
        UIImage(named: "coinTails.png")!,
    ]
    
    
    @IBOutlet weak var randomBackground: UIImageView!
    
    @IBOutlet weak var DCImage1: UIImageView!
    @IBOutlet weak var DCImage2: UIImageView!
    @IBOutlet weak var DCImage3: UIImageView!
    
    @IBOutlet weak var rollFlipButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var noOfSidesOnDiceLabel: UILabel!
    
    @IBOutlet weak var sidesOnDicePlus: UIButton!
    @IBOutlet weak var sidesOnDiceMinus: UIButton!
    @IBOutlet weak var noOfDiceCoinsLabel: UILabel!
    @IBOutlet weak var noOfDiceCoinsPlus: UIButton!
    @IBOutlet weak var noOfDiceCoinsMinus: UIButton!
    
    @IBAction func RollFlip(_ sender: Any) {
        results = Random(dcNum, Sides)
        
        if ViewController.diceOrCoin == 0
        {
            if dcNum == 1
            {
                DCImage1.image = dice[results[0]]
            }
            else if dcNum == 2
            {
                DCImage1.image = dice[results[0]]
                DCImage2.image = dice[results[1]]
            }
            else if dcNum == 3
            {
                DCImage1.image = dice[results[0]]
                DCImage2.image = dice[results[1]]
                DCImage3.image = dice[results[2]]
            }
        }
        else
        {
            if dcNum == 1
            {
                DCImage1.image = coin[results[0]]
            }
            else if dcNum == 2
            {
                DCImage1.image = coin[results[0]]
                DCImage2.image = coin[results[1]]
            }
            else if dcNum == 3
            {
                DCImage1.image = coin[results[0]]
                DCImage2.image = coin[results[1]]
                DCImage3.image = coin[results[2]]
            }
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
            DCImage2.isHidden = true
            DCImage3.isHidden = true
        }
        else if dcNum == 2
        {
            DCImage2.isHidden = false
            DCImage3.isHidden = true
        }
        else
        {
            DCImage2.isHidden = false
            DCImage3.isHidden = false
        }
    }
    
    @IBAction func noOfDCMinus(_ sender: Any) {
        if dcNum > 1
        {
            dcNum = dcNum - 1
        }
        if dcNum == 1
        {
            DCImage2.isHidden = true
            DCImage3.isHidden = true
        }
        else if dcNum == 2
        {
            DCImage2.isHidden = false
            DCImage3.isHidden = true
        }
        else
        {
            DCImage2.isHidden = false
            DCImage3.isHidden = false
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
