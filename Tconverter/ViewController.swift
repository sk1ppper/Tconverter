//
//  ViewController.swift
//  Tconverter
//
//  Created by ADMIN on 05.09.2018.
//  Copyright © 2018 Murat Urazbaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrengeitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 1
            slider.value = 50
            celsiusLabel.text = "\(Int(slider.value))ºC"
            fahrengeitLabel.text = "\(Int(slider.value*9/5+32))ºF"
            
        }
    }
    @IBAction func sliderValue(_ sender: UISlider) {
        let temperature = Int(sender.value)
        celsiusLabel.text = "\(temperature)ºC"
        let fahn = Int(sender.value*9/5 + 32)
        fahrengeitLabel.text = "\(fahn)ºF"
    }
}

