//
//  ViewController.swift
//  Lab-Basic Interactions
//
//  Created by Roman Hural on 18.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    
    var isPressed: Bool = false
    var previousColor: UIColor = .white
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        label.text = textField.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        textField.text = ""
        label.text = ""
    }

    @IBAction func switchButtonTapped(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .black
            previousColor = .black
        } else {
            view.backgroundColor = .white
            previousColor = .white
        }
    }
    
    @IBAction func sliderButtonPressed(_ sender: UISlider) {
        label.font = label.font.withSize(CGFloat(Int(sender.value)))
    }
    
    @IBAction func longPressGestureButtonPressed(_ sender: UILongPressGestureRecognizer) {
        isPressed.toggle()
        if isPressed {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = previousColor
        }
    }
}

