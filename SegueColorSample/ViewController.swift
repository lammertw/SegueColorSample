//
//  ViewController.swift
//  SegueColorSample
//
//  Created by Lammert Westerhoff on 08/05/15.
//  Copyright (c) 2015 Lammert Westerhoff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    @IBAction func tappedRed(sender: AnyObject) {
        label.text = "Tapped Red"
        performSegueWithIdentifier("ShowColor", sender: UIColor.redColor())
    }

    @IBAction func tappedGreen(sender: AnyObject) {
        label.text = "Tapped Green"
        performSegueWithIdentifier("ShowColor", sender: UIColor.greenColor())
    }

    @IBAction func tappedBlue(sender: AnyObject) {
        label.text = "Tapped Blue"
        performSegueWithIdentifier("ShowColor", sender: UIColor.blueColor())
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowColor" {
            if let colorViewController = segue.destinationViewController as? ColorViewController {
                colorViewController.color = sender as? UIColor
            }
        }
    }

}

