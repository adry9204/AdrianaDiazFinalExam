//
//  ViewController.swift
//  AdrianaDiazFinalExam
//
//  Created by Adriana Diaz Torres on 12/15/22.
//

import UIKit

class ViewController: UIViewController {

    //initializing local variables
    private var imperialSystem: Bool = true
    
    //creating UI Outlets
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }

    //Toggles betweenn the metric system and imperial system
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        if ( imperialSystem ) {
            heightInput.placeholder = "Write your height in centimeters..."
            weightInput.placeholder = "Write your weight in kilograms..."
            imperialSystem = false
        } else {
            heightInput.placeholder = "Write your height in inches..."
            weightInput.placeholder = "Write your weight in pounds..."
            imperialSystem = true
        }
    }
    
    //calcualtes the BMI
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        //checking if all the fields are correctly filled
        if(weightInput.text?.count == 0 || weightInput.text?.last == "." || weightInput.text?.first == "." || heightInput.text?.count == 0 || heightInput.text?.last == "." || heightInput.text?.first == ".") {
            return
        }
        
        let weight = Double(weightInput.text!)
        let height = Double(heightInput.text!)
        var result = 0.0
        
        if(weight == nil || height == nil) {
            return
        }
        
        //calculating the BMI according with the system selected
        if(imperialSystem) {
            result = (weight!*703)/(height!*height!)
        } else {
            result = weight!/((height!/100)*(height!/100))
        }
        
        ResultLabel.text = getCategory(bmi: result)
    }
    
    //small auxiliar method to check if the input is a valid weight or height
    func isValidInput(value: String) -> Bool {
        var dotsFound = 0
        
        //checking how many dots the input has
        for char in value {
            if (char == "."){
                dotsFound += 1
            }
        }
        
        if(dotsFound > 1){
            return false
        } else if (dotsFound == 1){
            let splitValue = value.split(separator: ".")
            //checking if both sides are numbers
            if(Int(splitValue[0]) == nil || Int(splitValue[1]) == nil){
                return false
            }
        } else {
            if (Int(value) == nil) {
                return false
            }
        }
        return true
    }
    
    //getting the clasification for the bmi value
    func getCategory(bmi: Double) -> String{
        switch bmi {
        case 0..<16:
            return "Severe Thinness"
        case 16..<17:
            return "Moderate Thinness"
        case 17..<18.5:
            return "Mild Thinness"
        case 18.5..<25:
            return "Normal"
        case 25..<30:
            return "Overweight"
        case 30..<35:
            return "Obese Class I"
        case 35..<40:
            return "Obese Class II"
        default:
            return "Obese Class III"
        }
    }
}

