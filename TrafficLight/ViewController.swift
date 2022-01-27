//
//  ViewController.swift
//  TrafficLight
//
//  Created by Денис Вареников on 27.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var orangeLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var buttonActionTitle: UIButton!
    var lightSwitch = "start"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 73
        redLight.alpha = 0.3
        
        orangeLight.layer.cornerRadius = 73
        orangeLight.alpha = 0.3
        
        greenLight.layer.cornerRadius = 73
        greenLight.alpha = 0.3
        
        buttonActionTitle.setTitle("START", for: .normal)
    }

    @IBAction func colorSwitching() {
        switch lightSwitch {
        case _ where lightSwitch == "red":
            lightSwitch = "orange"
            redLight.alpha = 0.3
            orangeLight.alpha = 1
        case _ where lightSwitch == "orange":
            lightSwitch = "green"
            orangeLight.alpha = 0.3
            greenLight.alpha = 1
        case _ where lightSwitch == "green":
            lightSwitch = "red"
            greenLight.alpha = 0.3
            redLight.alpha = 1
        default:
            lightSwitch = "red"
            redLight.alpha = 1
            buttonActionTitle.setTitle("NEXT", for: .normal)
        }
        
    }
    
}

