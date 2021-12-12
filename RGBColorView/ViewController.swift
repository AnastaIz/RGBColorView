//
//  ViewController.swift
//  RGBColorView
//
//  Created by Anastasia Izmaylova on 12.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 1
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redValue.text = String(redSlider.value)
        
        greenSlider.value = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenValue.text = String(greenSlider.value)
        
        blueSlider.value = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueValue.text = String(blueSlider.value)
    }

    @IBAction func redSliderAction() {
        redValue.text = String(redSlider.value)
      fillViewWithColor()
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(greenSlider.value)
        fillViewWithColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValue.text = String(blueSlider.value)
        fillViewWithColor()
    }
    
    func fillViewWithColor (){
        let redSliderValue = CGFloat(redSlider.value)
        let greenSliderValue = CGFloat(greenSlider.value)
        let blueSliderValue = CGFloat(blueSlider.value)
        
        let color = UIColor(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue, alpha: 1)
        
        colorView.backgroundColor = color
    }
}

