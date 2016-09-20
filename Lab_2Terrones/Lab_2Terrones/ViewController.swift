//
//  ViewController.swift
//  inClass_Sept.8
//
//  Created by Cooper Terrones on 9/8/16.
//  Copyright © 2016 Cooper Terrones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var capitalSwitch: UISwitch!
    
    @IBOutlet weak var imageLife: UIImageView!
    
    @IBOutlet weak var imageControl: UISegmentedControl!
    
    func updateImage() {
        if imageControl.selectedSegmentIndex == 0 {
            titleLabel.text="Childhood"
            imageLife.image=UIImage(named:"Basketball")
        } else if imageControl.selectedSegmentIndex == 1 {
            titleLabel.text="Present"
            imageLife.image=UIImage(named:"APC")
        }
    }
    func updateCaps() {
        if capitalSwitch.on {
            titleLabel.text=titleLabel.text?.uppercaseString
        } else{
            titleLabel.text=titleLabel.text?.lowercaseString
        }
    }
    
    @IBAction func changeInfo(sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    
    
    @IBAction func updateFont(sender: UISwitch) {
        updateCaps()
    }
    
    
    @IBAction func changeFontSize(sender: UISlider) {
        let fontSize=sender.value //float
        fontSizeLabel.text=String (format: "%.0f", fontSize) // convert float to string
        let fontSizeCGFloat = CGFloat (fontSize) //convert float to CGFloat
        titleLabel.font=UIFont.systemFontOfSize(fontSizeCGFloat)
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

