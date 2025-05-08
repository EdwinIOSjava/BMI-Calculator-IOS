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
        
         weight = sender.value
        
    }
    
    @IBAction func sliderMove(_ sender: UISlider) {
        
        heightLabel.text = (" \(Int(sender.value)) cm")
        
         height = sender.value
    }
    
    @IBAction func buttonCalculate(_ sender: Any) {
        
        var total :  calcularIMC ( Float(weight):<#T##Double#>, Float(height) : <#T##Double#>)

            totalLabel.text=total
        }
    
    func calcularIMC(pesoKg: Double, alturaM: Double) -> Double {
            return Float(pesoKg / (alturaM * alturaM)
        }
}

