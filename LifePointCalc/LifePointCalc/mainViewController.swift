//
//  mainViewController.swift
//  LifePointCalc
//
//  Created by MM02 minimac on 8/5/18.
//  Copyright © 2018 Deakin. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var players = 1
    var startingLifePoints = 1
    
    @IBOutlet weak var diceButton: UIButton!
    @IBOutlet weak var coinButton: UIButton!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
