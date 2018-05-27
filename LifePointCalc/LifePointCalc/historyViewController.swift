//
//  historyViewController.swift
//  LifePointCalc
//
//  Created by Nicholas Pilkington and Nicholas Wood on 28/5/18.
//  Copyright © 2018 Deakin. All rights reserved.
//

import UIKit

class historyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        historyBackground.image = settingsViewController.backgrounds[settingsViewController.Background]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnToMain(_ sender: UIButton) {
        performSegue(withIdentifier: "toMainFromRandom", sender: nil)
    }
    
    
    @IBOutlet weak var historyBackground: UIImageView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
