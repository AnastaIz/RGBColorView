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
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        setColor()
        
        setValue(for: redValue, greenValue, blueValue)
    }

    @IBAction func rgbSliderAction(_ sender: UISlider) {
        setColor()
        
        switch sender {
        case redSlider: setValue(for: redValue)
        case greenSlider: setValue(for: greenValue)
        default: setValue(for: blueValue)
        }
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    private func setValue(for values: UILabel...){
        values.forEach {value in
            switch value {
            case redValue:
                value.text = string(from: redSlider)
            case greenValue:
                value.text = string(from: greenSlider)
            default:
                value.text = string(from: blueSlider)
            }
        }
    }
        
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

