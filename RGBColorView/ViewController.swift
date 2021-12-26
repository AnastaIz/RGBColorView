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
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    var delegate: ColorViewController!
    var color: UIColor!
    
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
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        delegate.setBackgroundColor(colorView.backgroundColor!)
        dismiss(animated: true)
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
                redTextField.text = value.text
            case greenValue:
                value.text = string(from: greenSlider)
                greenTextField.text = value.text
            default:
                value.text = string(from: blueSlider)
                blueTextField.text = value.text
            }
        }
    }
        
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}


//extension ViewController {
//    private func showAlert(title: String, message: String){
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//
//        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
//            return
//        }
//
//        alert.addAction(okAction)
//        present(alert, animated: true)
//    }
//}
//
//extension ViewController: UITextFieldDelegate {
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        guard let newTextValue = textField.text else { return }
//        guard let numberTextValue = Float(newTextValue) else { return }
//
//        switch textField {
//        case redTextField:
//            redSlider.value = numberTextValue
//        case greenTextField:
//            greenSlider.value = numberTextValue
//        default:
//            blueSlider.value = numberTextValue
//        }
//    }
//}


