//
//  ViewController.swift
//  Lab1
//
//  Created by Cooper Terrones on 9/8/16.
//  Copyright © 2016 Cooper Terrones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Image: UIImageView!

    @IBAction func View(sender: UIButton) {
        if sender.currentTitle=="Role Model" {
            Image.image=UIImage(named: "Idol")
        }
        else if sender.currentTitle=="Pieces" {
            Image.image=UIImage(named: "Example")
        }
    }
}

