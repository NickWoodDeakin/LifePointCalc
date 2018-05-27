//
//  settingsViewController.swift
//  LifePointCalc
//
//  Created by Nicholas Pilkington on 27/5/18.
//  Copyright © 2018 Deakin. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
   
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    static let colours = [UIColor.red, UIColor.blue, UIColor.green, UIColor.yellow, UIColor.orange, UIColor.purple, UIColor.magenta, UIColor.cyan, UIColor.white]
    
    static var playerColours = [0, 0, 0, 0]
    
    static let backgrounds: [UIImage] = [
        UIImage(named: "bg1.png")!,
        UIImage(named: "bg2.png")!,
        UIImage(named: "bg3.png")!,
        UIImage(named: "bg4.png")!,
        UIImage(named: "bg5.png")!,
        UIImage(named: "bg6.png")!,
        UIImage(named: "bg7.png")!,
        UIImage(named: "bg8.png")!,
        UIImage(named: "bg9.png")!,
        UIImage(named: "bg10.png")!,
        UIImage(named: "bg11.png")!,
        ]
    let backgroundsPicker = ["bg1","bg2","bg3","bg4","bg5","bg6","bg7","bg8","bg9","bg10","bg11"]
    
    static var Background = 0
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var settingsBackground: UIImageView!
    
    
    @IBOutlet weak var playerOneColourLabel: UILabel!
    
    @IBOutlet weak var playerTwoColourLabel: UILabel!
    
    @IBOutlet weak var playerThreeColourLabel: UILabel!
    
    @IBOutlet weak var playerFourColourLabel: UILabel!
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return backgroundsPicker.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return backgroundsPicker[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          settingsBackground.image = settingsViewController.backgrounds[pickerView.selectedRow(inComponent: 0)]
        settingsViewController.Background = pickerView.selectedRow(inComponent: 0)
    }
    
    
    @IBAction func playerOneColourForwardsPress(_ sender: Any) {
        if settingsViewController.playerColours[0] != 8 {
            settingsViewController.playerColours[0] += 1
            playerOneColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[0]]
        }
        else
        {
            settingsViewController.playerColours[0] = 0
            playerOneColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[0]]
        }
    }
    
    @IBAction func playerOneColourBackPress(_ sender: Any) {
        if settingsViewController.playerColours[0] != 0 {
            settingsViewController.playerColours[0] -= 1
            playerOneColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[0]]
        }
        else
        {
            settingsViewController.playerColours[0] = 8
            playerOneColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[0]]
        }
    }
    
    @IBAction func playerTwoColourForwardsPress(_ sender: Any) {
        if settingsViewController.playerColours[1] != 8 {
            settingsViewController.playerColours[1] += 1
            playerTwoColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[1]]
        }
        else
        {
            settingsViewController.playerColours[1] = 0
            playerTwoColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[1]]
        }
    }
    
    @IBAction func playerTwoColourBackPress(_ sender: Any) {
        if settingsViewController.playerColours[1] != 0 {
            settingsViewController.playerColours[1] -= 1
            playerTwoColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[1]]
        }
        else
        {
            settingsViewController.playerColours[1] = 8
            playerTwoColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[1]]
        }
    }
    
    @IBAction func playerThreeColourForwardsPress(_ sender: Any) {
        if settingsViewController.playerColours[2] != 8 {
            settingsViewController.playerColours[2] += 1
            playerThreeColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[2]]
        }
        else
        {
            settingsViewController.playerColours[2] = 0
            playerThreeColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[2]]
        }
    }
    
    @IBAction func playerThreeColourBackPress(_ sender: Any) {
        if settingsViewController.playerColours[2] != 0 {
            settingsViewController.playerColours[2] -= 1
            playerThreeColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[2]]
        }
        else
        {
            settingsViewController.playerColours[2] = 8
            playerThreeColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[2]]
        }
    }
    
    @IBAction func playerFourColourForwardsPress(_ sender: Any) {
        if settingsViewController.playerColours[3] != 8 {
            settingsViewController.playerColours[3] += 1
            playerFourColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[3]]
        }
        else
        {
            settingsViewController.playerColours[3] = 0
            playerFourColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[3]]
        }
    }
    
    @IBAction func playerFourColourBackPress(_ sender: Any) {
        if settingsViewController.playerColours[3] != 0 {
            settingsViewController.playerColours[3] -= 1
            playerFourColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[3]]
        }
        else
        {
            settingsViewController.playerColours[3] = 8
            playerFourColourLabel.textColor = settingsViewController.colours[settingsViewController.playerColours[3]]
        }
    }
    
    @IBAction func backButtonPress(_ sender: Any) {
        performSegue(withIdentifier: "toMainFromSettings", sender: nil)
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
