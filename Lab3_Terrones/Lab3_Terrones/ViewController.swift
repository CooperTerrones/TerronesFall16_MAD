//
//  ViewController.swift
//  Lab3_Terrones
//
//  Created by Cooper Terrones on 9/27/16.
//  Copyright © 2016 Cooper Terrones. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var subTotal: UITextField!

    @IBOutlet weak var numberOfItems: UITextField!
    
    @IBOutlet weak var taxAmount: UITextField!
    
    @IBOutlet weak var totalWithTax: UILabel!
    
    @IBOutlet weak var averagePerItem: UILabel!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateTotals() {
        var amount:Float //subTotal amount
        var pct:Float //tax %
        
        if subTotal.text!.isEmpty {
            amount = 0.0
        } else {
            amount = Float(subTotal.text!)!
        }
        if taxAmount.text!.isEmpty {
            pct = 0.0
        }
        else {
            pct = Float(taxAmount.text!)!/100
        }

        let items=Int(numberOfItems.text!) //returns an optional
        let tax=amount*pct
        let total=amount+tax
        var avgPerItem : Float = 0.0 //specify Float so it's not a Double
        if items != nil {
            if items! > 0 {
                avgPerItem=total / Float(items!)
            }else {
                //create a UIAlertController object
                let alert=UIAlertController(title: "Warning", message: "The number of items must be greater than 0", preferredStyle: UIAlertControllerStyle.Alert)
                //create a UIAlertAction object for the button
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.Cancel, handler: nil)
                alert.addAction(cancelAction) //adds the alert action to the alert object
                let okAction=UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: {action in
                    self.numberOfItems.text="1"
                    self.updateTotals()
                })
                alert.addAction(okAction)
                presentViewController(alert, animated: true, completion: nil)
            } //end else
        }
        
        let currencyFormatter = NSNumberFormatter()
        currencyFormatter.numberStyle=NSNumberFormatterStyle.CurrencyStyle //set the number style
        totalWithTax.text=currencyFormatter.stringFromNumber(tax) //returns a formatted string
        averagePerItem.text=currencyFormatter.stringFromNumber(avgPerItem)
    }
        
        func textFieldDidEndEditing(textField: UITextField) {
            updateTotals()
        }
    
    override func viewDidLoad() {
        subTotal.delegate=self
        numberOfItems.delegate=self
        taxAmount.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

