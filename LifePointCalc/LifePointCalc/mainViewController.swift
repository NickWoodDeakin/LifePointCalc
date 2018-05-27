//
//  mainViewController.swift
//  LifePointCalc
//
//  Created by Nicholas Pilkington and Nicholas Wood on 8/5/18.
//  Copyright © 2018 Deakin. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if ViewController.playersNum == 3{
            playerNameThree.isHidden = false
            playerLifeThree.isHidden = false
        }
         else if ViewController.playersNum == 4{
            playerNameFour.isHidden = false
            playerLifeFour.isHidden = false
        }
        if ViewController.lifePointTemp == 1{
            playerLifeOne.setTitle("8000", for: .normal)
            playerLifeTwo.setTitle("8000", for: .normal)
            playerLifeThree.setTitle("8000", for: .normal)
            playerLifeFour.setTitle("8000", for: .normal)
        }
        else if ViewController.lifePointTemp == 2{
            playerLifeOne.setTitle("20", for: .normal)
            playerLifeTwo.setTitle("20", for: .normal)
            playerLifeThree.setTitle("20", for: .normal)
            playerLifeFour.setTitle("20", for: .normal)
        }
       else if ViewController.lifePointTemp == 3{
            playerLifeOne.setTitle("0", for: .normal)
            playerLifeTwo.setTitle("0", for: .normal)
            playerLifeThree.setTitle("0", for: .normal)
            playerLifeFour.setTitle("0", for: .normal)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var players = 1
    var startingLifePoints = 1
    
    @IBOutlet weak var playerNameOne: UIButton!
    @IBOutlet weak var playerLifeOne: UIButton!
    
    @IBOutlet weak var playerNameTwo: UIButton!
    @IBOutlet weak var playerLifeTwo: UIButton!
    
    @IBOutlet weak var playerNameThree: UIButton!
    @IBOutlet weak var playerLifeThree: UIButton!
    
    @IBOutlet weak var playerNameFour: UIButton!
    @IBOutlet weak var playerLifeFour: UIButton!
    
    @IBOutlet weak var diceButton: UIButton!
    @IBOutlet weak var coinButton: UIButton!
    
    @IBAction func diceButtonPress(_ sender: Any) {
        ViewController.diceOrCoin = 0
        
        performSegue(withIdentifier: "toRandomFromMain", sender: nil)
    }
    
    @IBAction func coinButtonPress(_ sender: Any) {
        ViewController.diceOrCoin = 1
        performSegue(withIdentifier: "toRandomFromMain", sender: nil)
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
