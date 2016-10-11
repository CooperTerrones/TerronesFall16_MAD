//
//  ViewController.swift
//  Project1_Final
//
//  Created by Cooper Terrones on 10/10/16.
//  Copyright © 2016 Cooper Terrones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bmiValue: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlide: UISlider!
    
    @IBOutlet weak var weightSlide: UISlider!
    
    var height:Float = 2.5
    
    var weight:Float = 110
    
    var bmi:Float = 0;
    
    @IBAction func heightLabelChange(sender: AnyObject) {
        let heightValue = Float(heightSlide.value)
        heightLabel.text = NSString(format: "%.2f m", heightValue) as String
    }
   
    @IBAction func weightLabelChange(sender: AnyObject) {
        let weightValue = Float(weightSlide.value)
        weightLabel.text = NSString(format: "%.2f kg", weightValue) as String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func heightChange(sender: UISlider) {
        height = sender.value
        heightLabel.text = NSString(format: "%.2f m", height) as String
    }
    
    
    @IBAction func weightChange(sender: UISlider) {
        weight = sender.value
        weightLabel.text = NSString(format: "%.2f kg", weight) as String
    }
    
    
    @IBAction func calculateBmi(sender: AnyObject) {
        bmi = weight / (height*height)
        bmiValue.text = NSString(format: "%.2f", bmi) as String
        
        var str = "";
        
        if bmi < 18.5
        {
            str = NSString(format: "%.2f, Underweight", bmi) as String
            bmiValue.textColor = UIColor.blueColor()
        } else if bmi >= 18.5 && bmi < 25
        {
            str = NSString(format: "%.2f, Healthy", bmi) as String
            bmiValue.textColor = UIColor.greenColor()
        } else if bmi >= 25 && bmi < 30
        {
            str = NSString(format: "%.2f, Slightly Overweight", bmi) as String
            bmiValue.textColor = UIColor.orangeColor()
        } else if bmi > 30
        {
            str = NSString(format: "%.2f, Obese", bmi) as String
            bmiValue.textColor = UIColor.redColor()
        }
        bmiValue.text = str
    }

}

