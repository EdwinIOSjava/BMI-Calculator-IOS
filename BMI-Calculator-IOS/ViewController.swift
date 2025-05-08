//
//  ViewController.swift
//  BMI-Calculator-IOS
//
//  Created by Mañanas on 5/5/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    var weight=60
    var height=100
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func stepperButton(_ sender: UIStepper) {
        weightLabel.text = String(Int(sender.value))
        
        weight = Int(sender.value)
        
    }
    
    @IBAction func sliderMove(_ sender: UISlider) {
        
        heightLabel.text = (" \(Int(sender.value)) cm")
        
        height = Int(sender.value)
    }
    
    @IBAction func buttonCalculate(_ sender: UIButton) {
        
        let imc = calcularIMC(weight: weight, heightCm: height)
        
        totalLabel.text = String(format: "IMC: %.2f", imc)
    }

    func calcularIMC(weight: Int, heightCm: Int) -> Float {
        
        let heightM = Float(heightCm) / 100.0
        return Float(weight) / (heightM * heightM)
    }

    
}

