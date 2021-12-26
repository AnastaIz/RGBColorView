//
//  ColorViewController.swift
//  RGBColorView
//
//  Created by Anastasia Izmaylova on 26.12.2021.
//

import UIKit

protocol ViewControllerDelegate {
    func setBackgroundColor(_ color: UIColor)
}

class ColorViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorVC = segue.destination as? ViewController else { return }
        colorVC.colorView.backgroundColor = view.backgroundColor
        colorVC.delegate = self
    }
    
}

extension ColorViewController: ViewControllerDelegate {
    func setBackgroundColor(_ color: UIColor) {
        mainView.backgroundColor = color
    }
}

