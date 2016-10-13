//
//  ViewController.swift
//  midterm
//
//  Created by Cooper Terrones on 10/13/16.
//  Copyright © 2016 Cooper Terrones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weeklySwitch: UISwitch!
    
    @IBOutlet weak var workoutsPerVal: UILabel!
    
    @IBOutlet weak var workoutTimeLabel: UILabel!
    
    @IBOutlet weak var showWeeklyLabel: UILabel!
    
    @IBOutlet weak var workoutTime: UITextField!
    
    @IBOutlet weak var workoutsPerLbl: UILabel!
    
    @IBOutlet weak var workoutTypePic: UIImageView!
    
    @IBOutlet weak var workoutType: UISegmentedControl!
    
    @IBOutlet weak var totalMiles: UILabel!
    
    @IBOutlet weak var totalCalsBurned: UILabel!
    
    @IBOutlet weak var workoutPerSlider: UISlider!
    
    @IBAction func weeklySwitch(sender: UISwitch) {
    }
       func workoutTypeChange() {
        if workoutType.selectedSegmentIndex == 0 {
            workoutTypePic.image=UIImage(named:"run")
        } else if workoutType.selectedSegmentIndex == 1 {
            workoutTypePic.image=UIImage(named:"swim")
        } else if workoutType.selectedSegmentIndex == 2 {
            workoutTypePic.image=UIImage(named:"bike")
        }
    }
    
    @IBAction func workoutPerSlider(sender: UISlider) {
        let workoutsVal = Int(workoutPerSlider.value)
        workoutsPerLbl.text = NSString(format: "%.2i", workoutsVal) as String
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

