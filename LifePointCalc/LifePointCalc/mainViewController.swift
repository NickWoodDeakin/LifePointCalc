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
            playerOneLifePoints = 8000
            playerTwoLifePoints = 8000
            playerThreeLifePoints = 8000
            playerFourLifePoints = 8000
        }
        else if ViewController.lifePointTemp == 2{ 
            playerLifeOne.setTitle("20",for: .normal)
            playerLifeTwo.setTitle("20", for: .normal)
            playerLifeThree.setTitle("20", for: .normal)
            playerLifeFour.setTitle("20", for: .normal)
            playerOneLifePoints = 20
            playerTwoLifePoints = 20
            playerThreeLifePoints = 20
            playerFourLifePoints = 20
        }
        else if ViewController.lifePointTemp == 3{
            playerLifeOne.setTitle("0", for: .normal)
            playerLifeTwo.setTitle("0", for: .normal)
            playerLifeThree.setTitle("0", for: .normal)
            playerLifeFour.setTitle("0", for: .normal)
            playerOneLifePoints = 0
            playerTwoLifePoints = 0
            playerThreeLifePoints = 0
            playerFourLifePoints = 0
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
    var disableBack = 0
    var player = 0
    var lifePointTemp:Double = 0
    var startingLifePoints = 1

    var playerOneLifePoints:Double = 0
    var playerTwoLifePoints:Double = 0
    var playerThreeLifePoints:Double = 0
    var playerFourLifePoints:Double = 0
    var buttonValue = 0
    var lifePointString = ""

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
    @IBOutlet weak var buttonBack: UIButton!
    @IBOutlet weak var buttonClear: UIButton!
    @IBOutlet weak var historyButton: UIButton!
    
    
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
        historyButton.isHidden = true
    }
    
    func hideCalc(){
        displayCalcValue.isHidden = true
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
        buttonFour.isHidden = true
        buttonFive.isHidden = true
        buttonSix.isHidden = true
        buttonSeven.isHidden = true
        buttonEight.isHidden = true
        buttonNine.isHidden = true
        buttonZero.isHidden = true
        buttonMinus.isHidden = true
        buttonPlus.isHidden = true
        buttonClear.isHidden = true
        historyButton.isHidden = false
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        displayCalcValue.text = displayCalcValue.text! + String(sender.tag)
        lifePointTemp = Double(displayCalcValue.text!)!
    }
    
    @IBAction func calcControl(_ sender: UIButton) {
        if displayCalcValue.text != "" && sender.tag != 12{
            if sender.tag == 11//add
            {
                if player == 1{
                    playerOneLifePoints = lifePointTemp + playerOneLifePoints
                    lifePointString = String(format: "%.0f", playerOneLifePoints)
                    lifePointTemp = 0
                    playerLifeOne.setTitle(lifePointString,for: .normal)
                    hideCalc()
                    lifePointString = ""
                    displayCalcValue.text = lifePointString
                }
                else if player == 2{
                    playerTwoLifePoints = lifePointTemp + playerTwoLifePoints
                    lifePointString = String(format: "%.0f", playerTwoLifePoints)
                    lifePointTemp = 0
                    playerLifeTwo.setTitle(lifePointString,for: .normal)
                    hideCalc()
                    lifePointString = ""
                    displayCalcValue.text = lifePointString
                }
                else if player == 3{
                    playerThreeLifePoints = lifePointTemp + playerThreeLifePoints
                    lifePointString = String(format: "%.0f", playerThreeLifePoints)
                    lifePointTemp = 0
                    playerLifeThree.setTitle(lifePointString,for: .normal)
                    hideCalc()
                    lifePointString = ""
                    displayCalcValue.text = lifePointString
                }
                else if player == 4{
                    playerFourLifePoints = lifePointTemp + playerFourLifePoints
                    lifePointString = String(format: "%.0f", playerFourLifePoints)
                    lifePointTemp = 0
                    playerLifeFour.setTitle(lifePointString,for: .normal)
                    hideCalc()
                    lifePointString = ""
                    displayCalcValue.text = lifePointString
                }
            }
            else if sender.tag == 10//subtract
            {
                if player == 1{
                    playerOneLifePoints = playerOneLifePoints - lifePointTemp
                    lifePointString = String(format: "%.0f", playerOneLifePoints)
                    lifePointTemp = 0
                    playerLifeOne.setTitle(lifePointString,for: .normal)
                    hideCalc()
                    lifePointString = ""
                    displayCalcValue.text = lifePointString
                }
                else if player == 2{
                    playerTwoLifePoints = playerTwoLifePoints - lifePointTemp
                    lifePointString = String(format: "%.0f", playerTwoLifePoints)
                    lifePointTemp = 0
                    playerLifeTwo.setTitle(lifePointString,for: .normal)
                    hideCalc()
                    lifePointString = ""
                    displayCalcValue.text = lifePointString
                }
                else if player == 3{
                    playerThreeLifePoints =
                    playerThreeLifePoints - lifePointTemp
                    lifePointString = String(format: "%.0f", playerThreeLifePoints)
                    lifePointTemp = 0
                    playerLifeThree.setTitle(lifePointString,for: .normal)
                    hideCalc()
                    lifePointString = ""
                    displayCalcValue.text = lifePointString
                }
                else if player == 4{
                    playerFourLifePoints = playerFourLifePoints - lifePointTemp
                    lifePointString = String(format: "%.0f", playerFourLifePoints)
                    lifePointTemp = 0
                    playerLifeFour.setTitle(lifePointString,for: .normal)
                    hideCalc()
                    lifePointString = ""
                    displayCalcValue.text = lifePointString
                }
            }
        }
        else if sender.tag == 12{
            lifePointString = ""
            displayCalcValue.text = lifePointString
        }
        else if sender.tag == 13{
            hideCalc()
            lifePointString = ""
            displayCalcValue.text = lifePointString
            disableBack = 0
        }
    }
    
    @IBAction func playerCalcOne(_ sender: Any) {
        loadCalc()
        player = 1
        disableBack = 1
    }
    
    @IBAction func playerCalcTwo(_ sender: Any) {
        loadCalc()
        player = 2
        disableBack = 1
    }
    
    @IBAction func playerCalcThree(_ sender: Any) {
        loadCalc()
        player = 3
        disableBack = 1
    }
    
    @IBAction func playerCalcFour(_ sender: Any) {
        loadCalc()
        player = 4
        disableBack = 1
    }
    
    @IBAction func backButton(_ sender: Any) {
        if disableBack == 0{
        performSegue(withIdentifier: "toStartFromMain", sender: nil)
        }
    }
    
    @IBAction func historyView(_ sender: UIButton) {
        performSegue(withIdentifier: "toHistoryFromMain", sender: nil)
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
