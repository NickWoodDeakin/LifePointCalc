//
//  ViewController.swift
//  LifePointCalc
//
//  Created by MM02 minimac on 8/5/18.
//  Copyright © 2018 Deakin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    @IBOutlet weak var setlifepoint1: UIButton!
    @IBOutlet weak var setLifePoint2: UIButton!
    @IBOutlet weak var setLifePoint3: UIButton!
    
    @IBAction func PlayersTwo(_ sender: Any) {
        setlifepoint1.isHidden = false
        setLifePoint2.isHidden = false
        setLifePoint3.isHidden = false
    }
    @IBAction func PlayersThree(_ sender: Any) {
        setlifepoint1.isHidden = false
        setLifePoint2.isHidden = false
        setLifePoint3.isHidden = false
    }
    @IBAction func PlayerFour(_ sender: Any) {
        setlifepoint1.isHidden = false
        setLifePoint2.isHidden = false
        setLifePoint3.isHidden = false
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

