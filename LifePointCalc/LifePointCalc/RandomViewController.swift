//
//  RandomViewController.swift
//  LifePointCalc
//
//  Created by Nicholas Pilkington on 22/5/18.
//  Copyright © 2018 Deakin. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if ViewController.diceOrCoin == 0{
            TestLabel.text = "DICE"
        }
        else
        {
            TestLabel.text = "COIN"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var TestLabel: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func backButtonPress(_ sender: Any) {
        performSegue(withIdentifier: "backFromRandom", sender: nil)
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
