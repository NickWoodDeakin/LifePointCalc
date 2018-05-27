//
//  ViewController.swift
//  LifePointCalc
//
//  Created by Nicholas Pilkington and Nicholas Wood on 8/5/18.
//  Copyright © 2018 Deakin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        startBackground.image = settingsViewController.backgrounds[settingsViewController.Background]
    }
    
    
    @IBOutlet weak var startBackground: UIImageView!
    
    @IBOutlet weak var setlifepoint1: UIButton!
    @IBOutlet weak var setLifePoint2: UIButton!
    @IBOutlet weak var setLifePoint3: UIButton!
    @IBOutlet weak var LifeLabel: UILabel!
    
    static var diceOrCoin = 0 //Dice = 0, Coin = 1. This determines whether to render coins or dice in the RandomViewController.

    static var playersNum = 0
    static var lifePointTemp = 0
    
    @IBAction func PlayersTwo(_ sender: Any) {
        setlifepoint1.isHidden = false
        setLifePoint2.isHidden = false
        setLifePoint3.isHidden = false
        LifeLabel.isHidden = false
        ViewController.playersNum = 2
    }
    @IBAction func PlayersThree(_ sender: Any) {
        setlifepoint1.isHidden = false
        setLifePoint2.isHidden = false
        setLifePoint3.isHidden = false
        LifeLabel.isHidden = false

        ViewController.playersNum = 3
    }
    @IBAction func PlayerFour(_ sender: Any) {
        setlifepoint1.isHidden = false
        setLifePoint2.isHidden = false
        setLifePoint3.isHidden = false
        LifeLabel.isHidden = false

        ViewController.playersNum = 4
    }
    @IBAction func LifePointStartOne(_ sender: Any) {
        ViewController.lifePointTemp = 1
        performSegue(withIdentifier: "toMainFromStart", sender: nil)
       
    }
    @IBAction func LifePointStartTwo(_ sender: Any) {
        ViewController.lifePointTemp = 2
        performSegue(withIdentifier: "toMainFromStart", sender: nil)
    }
    @IBAction func LifePointStartThree(_ sender: Any) {
        ViewController.lifePointTemp = 3
    performSegue(withIdentifier: "toMainFromStart", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

