//
//  mainViewController.swift
//  LifePointCalc
//
//  Created by Nicholas Pilkington and Nicholas Wood on 8/5/18.
//  Copyright © 2018 Deakin. All rights reserved.
//

import UIKit

class mainViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        playerOneName.delegate = self
        playerTwoName.delegate = self
        playerThreeName.delegate = self
        playerFourName.delegate = self
        
        print(ViewController.lifePointTemp)
        if ViewController.lifePointTemp == 1{
        playerLifeOne.setTitle("8000", for: .normal)
            playerLifeTwo.setTitle("8000", for: .normal)
            playerLifeThree.setTitle("8000", for: .normal)
            playerLifeFour.setTitle("8000", for: .normal)
        }
        else if ViewController.lifePointTemp == 2{ 
            playerLifeOne.setTitle("20",for: .normal)
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
        if ViewController.playersNum == 3{
            playerThreeName.isHidden = false
            playerLifeThree.isHidden = false
        }
         else if ViewController.playersNum == 4{
            playerThreeName.isHidden = false
            playerLifeThree.isHidden = false
            playerFourName.isHidden = false
            playerLifeFour.isHidden = false
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var players = 1
    var startingLifePoints = 1

    
    @IBOutlet weak var playerOneName: UITextField!
    
    @IBOutlet weak var playerTwoName: UITextField!
    
    @IBOutlet weak var playerThreeName: UITextField!
    
    @IBOutlet weak var playerFourName: UITextField!
    
    
    @IBOutlet weak var playerLifeOne: UIButton!
    
    
    @IBOutlet weak var playerLifeTwo: UIButton!
    
    
    @IBOutlet weak var playerLifeThree: UIButton!
    
    
    @IBOutlet weak var playerLifeFour: UIButton!
    
    @IBOutlet weak var diceButton: UIButton!
    @IBOutlet weak var coinButton: UIButton!
    
    @IBOutlet weak var displayCalcValue: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    
    
    func loadCalc(){
        displayCalcValue.isHidden = false
        buttonOne.isHidden = false
        buttonTwo.isHidden = false
        buttonThree.isHidden = false
        buttonFour.isHidden = false
        buttonFive.isHidden = false
        buttonSix.isHidden = false
        buttonSeven.isHidden = false
        buttonEight.isHidden = false
        buttonNine.isHidden = false
        buttonZero.isHidden = false
        buttonMinus.isHidden = false
        buttonPlus.isHidden = false
        buttonClear.isHidden = false
    }
    
    @IBAction func playerCalcOne(_ sender: Any) {
        loadCalc()
    }
    
    @IBAction func playerCalcTwo(_ sender: Any) {
        loadCalc()
    }
    
    @IBAction func playerCalcThree(_ sender: Any) {
        loadCalc()
    }
    
    @IBAction func playerCalcFour(_ sender: Any) {
        loadCalc()
    }
    
    @IBAction func diceButtonPress(_ sender: Any) {
        ViewController.diceOrCoin = 0
        
        performSegue(withIdentifier: "toRandomFromMain", sender: nil)
    }
    
    @IBAction func coinButtonPress(_ sender: Any) {
        ViewController.diceOrCoin = 1
        performSegue(withIdentifier: "toRandomFromMain", sender: nil)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        playerOneName.resignFirstResponder()
        playerTwoName.resignFirstResponder()
        playerThreeName.resignFirstResponder()
        playerFourName.resignFirstResponder()
        return true
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
